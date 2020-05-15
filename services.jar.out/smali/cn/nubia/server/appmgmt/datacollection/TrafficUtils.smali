.class public Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;
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

.field private static mIface_3g:Ljava/lang/String;

.field private static mIface_wifi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, ""

    sput-object v0, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUidMobileBytes(Landroid/content/Context;I)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 22
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_3g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->init3GIfaceName(Landroid/content/Context;)V

    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    .line 27
    .local v0, "value":J
    :try_start_0
    const-string/jumbo v2, "nubia.net.NubiaTrafficStats"

    .line 28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 29
    .local v2, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getIfaceUidTxBytes"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 31
    .local v3, "method":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_3g:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-wide v0, v9

    .line 32
    const-string v5, "getIfaceUidRxBytes"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    invoke-virtual {v2, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_3g:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v4

    .line 37
    .end local v2    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "TrafficUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUidMobileBytes : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-wide v0
.end method

.method public static getUidWifiBytes(Landroid/content/Context;I)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 44
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->initWifiIfaceName(Landroid/content/Context;)V

    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    .line 49
    .local v0, "value":J
    :try_start_0
    const-string/jumbo v2, "nubia.net.NubiaTrafficStats"

    .line 50
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 51
    .local v2, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getIfaceUidTxBytes"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 53
    .local v3, "method":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-wide v0, v9

    .line 54
    const-string v5, "getIfaceUidRxBytes"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    invoke-virtual {v2, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 56
    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v4

    .line 59
    .end local v2    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "TrafficUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUidWifiBytes : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-wide v0
.end method

.method private static init3GIfaceName(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "connectivity"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 68
    .local v1, "networks":[Landroid/net/Network;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 69
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 70
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 71
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 72
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    .line 73
    .local v6, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v6, :cond_0

    .line 74
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_3g:Ljava/lang/String;

    .line 68
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "linkProperties":Landroid/net/LinkProperties;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const-string v2, "TrafficUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init3GIfaceName mIface_3g="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_3g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method private static initWifiIfaceName(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    const-string v0, "connectivity"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 85
    .local v1, "networks":[Landroid/net/Network;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 86
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 87
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 89
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    .line 90
    .local v6, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    .line 85
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "linkProperties":Landroid/net/LinkProperties;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string v2, "TrafficUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initWifiIfaceName mIface_wifi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/server/appmgmt/datacollection/TrafficUtils;->mIface_wifi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
