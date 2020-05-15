.class public Lnubia/os/screenswitch/ScreenSwitchServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "ScreenSwitchServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo<",
        "Lnubia/os/screenswitch/ScreenSwitchManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/ServiceProxyInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnubia/os/screenswitch/ScreenSwitchManager;",
            ">;"
        }
    .end annotation

    .line 16
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchManager;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "nubia.screenswitch"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lnubia/os/screenswitch/ScreenSwitchServiceInfo;->getServiceProxy()Lnubia/os/screenswitch/ScreenSwitchManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/os/screenswitch/ScreenSwitchManager;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lnubia/os/screenswitch/ScreenSwitchServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 22
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchManager;

    move-result-object v1

    .line 23
    .local v1, "service":Lnubia/os/screenswitch/IScreenSwitchManager;
    new-instance v2, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-direct {v2, v1}, Lnubia/os/screenswitch/ScreenSwitchManager;-><init>(Lnubia/os/screenswitch/IScreenSwitchManager;)V

    return-object v2
.end method
