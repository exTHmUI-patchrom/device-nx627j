.class public Landroid/os/DeviceIdleManager;
.super Ljava/lang/Object;
.source "DeviceIdleManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IDeviceIdleController;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/os/DeviceIdleManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    .line 42
    return-void
.end method


# virtual methods
.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 66
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 2

    .line 50
    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 53
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method
