.class public final Landroid/app/ExtraSystemServiceRegistry;
.super Ljava/lang/Object;
.source "ExtraSystemServiceRegistry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerNubiaServices()V
    .locals 5

    .line 18
    invoke-static {}, Lnubia/os/ServiceProxyInfoCache;->getServiceProxyInfos()[Landroid/app/ServiceProxyInfo;

    move-result-object v0

    .line 19
    .local v0, "ctrls":[Landroid/app/ServiceProxyInfo;, "[Landroid/app/ServiceProxyInfo<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    .local v3, "info":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<*>;"
    invoke-virtual {v3}, Landroid/app/ServiceProxyInfo;->hasFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    invoke-static {v3}, Landroid/app/ExtraSystemServiceRegistry;->registerService(Landroid/app/ServiceProxyInfo;)V

    .line 19
    .end local v3    # "info":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method private static registerService(Landroid/app/ServiceProxyInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ServiceProxyInfo<",
            "*>;)V"
        }
    .end annotation

    .line 28
    .local p0, "serviceInfo":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<*>;"
    :try_start_0
    const-string v0, "android.app.SystemServiceRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 34
    .local v2, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v3, "registerService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 35
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/ServiceProxyInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 37
    invoke-virtual {p0}, Landroid/app/ServiceProxyInfo;->getServiceClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-virtual {p0}, Landroid/app/ServiceProxyInfo;->getServiceFetcher()Landroid/app/SystemServiceRegistry$CachedServiceFetcher;

    move-result-object v4

    aput-object v4, v1, v6

    .line 36
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
