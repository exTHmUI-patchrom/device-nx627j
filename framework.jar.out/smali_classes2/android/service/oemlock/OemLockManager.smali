.class public Landroid/service/oemlock/OemLockManager;
.super Ljava/lang/Object;
.source "OemLockManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mService:Landroid/service/oemlock/IOemLockService;


# direct methods
.method public constructor <init>(Landroid/service/oemlock/IOemLockService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/oemlock/IOemLockService;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    .line 44
    return-void
.end method


# virtual methods
.method public isDeviceOemUnlocked()Z
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isDeviceOemUnlocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOemUnlockAllowed()Z
    .locals 2

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByCarrier()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOemUnlockAllowedByUser()Z
    .locals 2

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByUser()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 65
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0, p1, p2}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 69
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v0, p1}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByUser(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 103
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
