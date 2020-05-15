.class public final Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_2/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "config"    # Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 507
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->writeToParcel(Landroid/os/HwParcel;)V

    .line 510
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 512
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 513
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 514
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 516
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 517
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    nop

    .line 520
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 518
    return-object v2

    .line 520
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public disableLinkLayerStatsCollection()Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 399
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 403
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 404
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 407
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 408
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    nop

    .line 411
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 409
    return-object v2

    .line 411
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "debug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 378
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 381
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 383
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 384
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 385
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 387
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 388
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    nop

    .line 391
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 389
    return-object v2

    .line 391
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 549
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 552
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 554
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 555
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 556
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 558
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 559
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    nop

    .line 562
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 560
    return-object v2

    .line 562
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 149
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 247
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 251
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 252
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 253
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 255
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 256
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 257
    new-instance v3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;-><init>()V

    .line 258
    .local v3, "_hidl_out_capabilities":Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;
    invoke-virtual {v3, v1}, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 259
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_capabilities":Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 291
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 295
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 296
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 297
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 299
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 300
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 301
    new-instance v3, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;-><init>()V

    .line 302
    .local v3, "_hidl_out_capabilities":Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;
    invoke-virtual {v3, v1}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 303
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_capabilities":Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 306
    nop

    .line 307
    return-void

    .line 305
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 226
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 230
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 231
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 232
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 234
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 235
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 236
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 237
    .local v3, "_hidl_out_capabilities":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_capabilities":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 889
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 891
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 893
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 894
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 895
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 897
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 898
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    nop

    .line 901
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 899
    return-object v2

    .line 901
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 703
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 705
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 707
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 708
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 709
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 711
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 712
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 713
    invoke-static {v1}, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 714
    .local v3, "_hidl_out_fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 682
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 686
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 687
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 688
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 690
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 691
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 692
    invoke-static {v1}, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 693
    .local v3, "_hidl_out_fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 696
    nop

    .line 697
    return-void

    .line 695
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 814
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 818
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 819
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 820
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 822
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 824
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 826
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 827
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 828
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 827
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 831
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 832
    nop

    .local v10, "_hidl_index_0":I
    :goto_0
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_0

    .line 833
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 835
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 836
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 837
    nop

    .line 839
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_0

    .line 843
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 845
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 843
    return-object v11

    .line 845
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 419
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 421
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 423
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 424
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 425
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 427
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 428
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 429
    new-instance v3, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;-><init>()V

    .line 430
    .local v3, "_hidl_out_stats":Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    invoke-virtual {v3, v1}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->readFromParcel(Landroid/os/HwParcel;)V

    .line 431
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_stats":Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 434
    nop

    .line 435
    return-void

    .line 433
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 183
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 187
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 188
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 189
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 191
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 192
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 193
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "_hidl_out_name":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 485
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 489
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 490
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 493
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 494
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 495
    new-instance v3, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;-><init>()V

    .line 496
    .local v3, "_hidl_out_caps":Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;
    invoke-virtual {v3, v1}, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 497
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_caps":Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 500
    nop

    .line 501
    return-void

    .line 499
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 162
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 166
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 167
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 168
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 170
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 171
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 172
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 173
    .local v3, "_hidl_out_type":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_type":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "_hidl_cb"    # Landroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 313
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 316
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 318
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 319
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 320
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 322
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 323
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 324
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 325
    .local v3, "_hidl_out_frequencies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p2, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_frequencies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    .local p2, "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 269
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 273
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 275
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 276
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 279
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 280
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    nop

    .line 283
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 281
    return-object v2

    .line 283
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 776
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 778
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 780
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 781
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 782
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 784
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 787
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 785
    return-object v2

    .line 787
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 795
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 799
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 800
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 801
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 803
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 806
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 804
    return-object v2

    .line 806
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 909
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 913
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 914
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 917
    nop

    .line 918
    return-void

    .line 916
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 873
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 875
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 877
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 878
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 879
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 882
    nop

    .line 883
    return-void

    .line 881
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readApfPacketFilterData(Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 725
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 729
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 730
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 731
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 733
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 734
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 735
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 736
    .local v3, "_hidl_out_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v3    # "_hidl_out_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "callback"    # Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 205
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 208
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 210
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 211
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 212
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 214
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 215
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    nop

    .line 218
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 216
    return-object v2

    .line 218
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 853
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 857
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 858
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setMacAddress([B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "mac"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 746
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 750
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 751
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 752
    nop

    .line 754
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 757
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 759
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 760
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 761
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 763
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 764
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    nop

    .line 767
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 765
    return-object v2

    .line 767
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "state"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 528
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 531
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 533
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 534
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 535
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 537
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 538
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    nop

    .line 541
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 539
    return-object v2

    .line 541
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "oui"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 633
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 635
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 637
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 638
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 639
    nop

    .line 641
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 644
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 646
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 647
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 648
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 650
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 651
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    nop

    .line 654
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 652
    return-object v2

    .line 654
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .param p2, "params"    # Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 335
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 337
    invoke-virtual {p2, v0}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->writeToParcel(Landroid/os/HwParcel;)V

    .line 339
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 341
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 342
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 343
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 345
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 346
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    nop

    .line 349
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 347
    return-object v2

    .line 349
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 662
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 666
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 667
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 668
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 670
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 671
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    nop

    .line 674
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 672
    return-object v2

    .line 674
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .param p2, "maxRssi"    # I
    .param p3, "minRssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 441
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 443
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 444
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 446
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 448
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 449
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 450
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 452
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 453
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    nop

    .line 456
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 454
    return-object v2

    .line 456
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .param p3, "etherType"    # S
    .param p4, "srcAddress"    # [B
    .param p5, "dstAddress"    # [B
    .param p6, "periodInMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;S[B[BI)",
            "Landroid/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    .local p2, "ipPacketData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 570
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 572
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 573
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 575
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 577
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 578
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v1, v3, v4, p4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 579
    nop

    .line 581
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 584
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwBlob;

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 586
    .restart local v1    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 587
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 588
    nop

    .line 590
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 592
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 594
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 596
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 598
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 600
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 601
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    nop

    .line 604
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 602
    return-object v2

    .line 604
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 357
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 360
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 362
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 363
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 366
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 367
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    nop

    .line 370
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 368
    return-object v2

    .line 370
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 464
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 467
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 469
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 470
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 473
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 474
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    nop

    .line 477
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 475
    return-object v2

    .line 477
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 5
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 612
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 615
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 617
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 618
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 619
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 621
    new-instance v2, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 622
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    nop

    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 623
    return-object v2

    .line 625
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 144
    const-string v0, "[class or subclass of android.hardware.wifi@1.2::IWifiStaIface]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
