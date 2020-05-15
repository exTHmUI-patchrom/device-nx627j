.class public Lnubia/os/presssensor/PressSensorServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "PressSensorServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo<",
        "Lnubia/os/presssensor/PressSensorManager;",
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
            "Lnubia/os/presssensor/PressSensorManager;",
            ">;"
        }
    .end annotation

    .line 16
    const-class v0, Lnubia/os/presssensor/PressSensorManager;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "nubia.presssensor"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lnubia/os/presssensor/PressSensorServiceInfo;->getServiceProxy()Lnubia/os/presssensor/PressSensorManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/os/presssensor/PressSensorManager;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lnubia/os/presssensor/PressSensorServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 22
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/presssensor/IPressSensorManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/presssensor/IPressSensorManager;

    move-result-object v1

    .line 23
    .local v1, "service":Lnubia/os/presssensor/IPressSensorManager;
    new-instance v2, Lnubia/os/presssensor/PressSensorManager;

    invoke-direct {v2, v1}, Lnubia/os/presssensor/PressSensorManager;-><init>(Lnubia/os/presssensor/IPressSensorManager;)V

    return-object v2
.end method

.method protected hasFeature()Z
    .locals 1

    .line 28
    invoke-static {}, Lnubia/os/presssensor/PressSensorFeatureConfig;->isEnable()Z

    move-result v0

    return v0
.end method
