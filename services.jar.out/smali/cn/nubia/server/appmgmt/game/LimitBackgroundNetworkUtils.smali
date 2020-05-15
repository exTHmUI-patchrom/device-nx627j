.class public Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;
.super Ljava/lang/Object;
.source "LimitBackgroundNetworkUtils.java"


# static fields
.field private static DEBUG:Z = false

.field private static final LIMIT_BACKGROUND_NETWORK:Ljava/lang/String; = "limitBackgroundNetwork"

.field private static final TAG:Ljava/lang/String; = "LimitBackgroundNetworkUtils"

.field private static final UNLIMIT_BACKGROUND_NETWORK:Ljava/lang/String; = "unlimitBackgroundNetwork"

.field private static mCM:Landroid/net/IConnectivityManager;

.field private static mNMS:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mCM:Landroid/net/IConnectivityManager;

    .line 19
    sput-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    .line 22
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->DEBUG:Z

    .line 25
    invoke-static {}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->getRelativeService()V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNetworkInterfaceTypeName()Ljava/lang/String;
    .locals 3

    .line 70
    const-string v0, ""

    .line 72
    .local v0, "networkInterfaceType":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mCM:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 73
    .local v1, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 78
    .end local v1    # "linkProperties":Landroid/net/LinkProperties;
    :cond_0
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method static getRelativeService()V
    .locals 1

    .line 59
    sget-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mCM:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "connectivity"

    .line 61
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mCM:Landroid/net/IConnectivityManager;

    .line 63
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_1

    .line 64
    const-string/jumbo v0, "network_management"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    .line 67
    :cond_1
    return-void
.end method

.method static limitBackgroundNetwork(I)V
    .locals 7
    .param p0, "uid"    # I

    .line 29
    invoke-static {}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->getRelativeService()V

    .line 31
    :try_start_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "limitBackgroundNetwork"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 33
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 34
    sget-object v1, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->getNetworkInterfaceTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "LimitBackgroundNetworkUtils"

    const-string v2, "NMS doesn\'t have method: limitBackgroundNetwork"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method static unlimitBackgroundNetwork(I)V
    .locals 7
    .param p0, "uid"    # I

    .line 44
    invoke-static {}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->getRelativeService()V

    .line 46
    :try_start_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "unlimitBackgroundNetwork"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->mNMS:Landroid/os/INetworkManagementService;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->getNetworkInterfaceTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "LimitBackgroundNetworkUtils"

    const-string v2, "NMS doesn\'t have method: unlimitBackgroundNetwork"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
