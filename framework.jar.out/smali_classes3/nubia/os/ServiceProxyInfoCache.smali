.class public final Lnubia/os/ServiceProxyInfoCache;
.super Ljava/lang/Object;
.source "ServiceProxyInfoCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceProxyInfos()[Landroid/app/ServiceProxyInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/app/ServiceProxyInfo<",
            "*>;"
        }
    .end annotation

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/ServiceProxyInfo;

    new-instance v1, Lnubia/os/SystemAccessServiceInfo;

    invoke-direct {v1}, Lnubia/os/SystemAccessServiceInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lnubia/os/edge/EdgeTouchEventServiceInfo;

    invoke-direct {v1}, Lnubia/os/edge/EdgeTouchEventServiceInfo;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lnubia/os/ApplicationManagerServiceInfo;

    invoke-direct {v1}, Lnubia/os/ApplicationManagerServiceInfo;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lnubia/os/screenswitch/ScreenSwitchServiceInfo;

    invoke-direct {v1}, Lnubia/os/screenswitch/ScreenSwitchServiceInfo;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lnubia/os/presssensor/PressSensorServiceInfo;

    invoke-direct {v1}, Lnubia/os/presssensor/PressSensorServiceInfo;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 24
    .local v0, "infos":[Landroid/app/ServiceProxyInfo;, "[Landroid/app/ServiceProxyInfo<*>;"
    return-object v0
.end method
