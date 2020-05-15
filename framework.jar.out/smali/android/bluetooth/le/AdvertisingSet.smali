.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;
.source "AdvertisingSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertisingSet"


# instance fields
.field private mAdvertiserId:I

.field private final mGatt:Landroid/bluetooth/IBluetoothGatt;


# direct methods
.method constructor <init>(ILandroid/bluetooth/IBluetoothManager;)V
    .locals 3
    .param p1, "advertiserId"    # I
    .param p2, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    .line 47
    :try_start_0
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public enableAdvertising(ZII)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "duration"    # I
    .param p3, "maxExtendedAdvertisingEvents"    # I

    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getAdvertiserId()I
    .locals 1

    .line 202
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return v0
.end method

.method public getOwnAddress()V
    .locals 3

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method setAdvertiserId(I)V
    .locals 0
    .param p1, "advertiserId"    # I

    .line 55
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    .line 56
    return-void
.end method

.method public setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3
    .param p1, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3
    .param p1, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3
    .param p1, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
