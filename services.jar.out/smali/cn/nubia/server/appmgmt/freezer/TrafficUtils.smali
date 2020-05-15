.class public Lcn/nubia/server/appmgmt/freezer/TrafficUtils;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficUtils"

.field private static mDebug:Z

.field private static mIface_3g:Ljava/lang/String;

.field private static mIface_wifi:Ljava/lang/String;

.field private static mNMS:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    .line 18
    const-string v0, ""

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    .line 21
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileBytes()J
    .locals 4

    .line 108
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUidMobileBytes(I)J
    .locals 4
    .param p0, "uid"    # I

    .line 87
    sget-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->initPlatIface()V

    .line 90
    :cond_0
    const-wide/16 v0, 0x0

    .line 96
    .local v0, "value":J
    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    invoke-static {v2, p0}, Lnubia/net/NubiaTrafficStats;->getIfaceUidTxBytes(Ljava/lang/String;I)J

    move-result-wide v2

    move-wide v0, v2

    .line 100
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    invoke-static {v2, p0}, Lnubia/net/NubiaTrafficStats;->getIfaceUidRxBytes(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method public static getUidWifiBytes(I)J
    .locals 4
    .param p0, "uid"    # I

    .line 24
    sget-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->initPlatIface()V

    .line 27
    :cond_0
    const-wide/16 v0, 0x0

    .line 33
    .local v0, "value":J
    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    invoke-static {v2, p0}, Lnubia/net/NubiaTrafficStats;->getIfaceUidTxBytes(Ljava/lang/String;I)J

    move-result-wide v2

    move-wide v0, v2

    .line 37
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    invoke-static {v2, p0}, Lnubia/net/NubiaTrafficStats;->getIfaceUidRxBytes(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    .line 40
    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method private static initNetworkManagementService()V
    .locals 1

    .line 82
    const-string/jumbo v0, "network_management"

    .line 83
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    .line 84
    return-void
.end method

.method private static initPlatIface()V
    .locals 6

    .line 62
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "ro.hardware"

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "plat":Ljava/lang/String;
    const-string/jumbo v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const-string/jumbo v3, "rmnet_data0"

    sput-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 68
    const-string/jumbo v3, "wlan0"

    sput-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    const-string v3, "ccmni0"

    sput-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 71
    const-string/jumbo v3, "wlan0"

    sput-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v3, "rmnet_data0"

    sput-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 74
    const-string/jumbo v3, "wlan0"

    sput-object v3, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mIface_wifi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "plat":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static isUidBytesNotExist()Z
    .locals 7

    .line 45
    const/4 v0, 0x1

    move v1, v0

    .line 47
    .local v1, "result":Z
    :try_start_0
    const-string/jumbo v2, "nubia.net.NubiaTrafficStats"

    .line 48
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 49
    .local v2, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getIfaceUidTxBytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 56
    .end local v1    # "result":Z
    .end local v2    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "result":Z
    move v1, v0

    .line 56
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public static setMobileWifiDataUidRule(IZ)Z
    .locals 4
    .param p0, "uid"    # I
    .param p1, "enableData"    # Z

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, "success":Z
    sget-object v1, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->initNetworkManagementService()V

    .line 118
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p0, p1}, Landroid/os/INetworkManagementService;->setMobileDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 121
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mDebug:Z

    if-eqz v2, :cond_1

    .line 122
    const-string v2, "TrafficUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p0, p1}, Landroid/os/INetworkManagementService;->setWifiDataUidRule(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    goto :goto_1

    .line 128
    :catch_1
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 130
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/TrafficUtils;->mDebug:Z

    if-eqz v2, :cond_2

    .line 131
    const-string v2, "TrafficUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v0
.end method
