.class public final Landroid/bluetooth/le/PeriodicAdvertisingManager;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"


# static fields
.field private static final SKIP_MAX:I = 0x1f3

.field private static final SKIP_MIN:I = 0x0

.field private static final SYNC_STARTING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PeriodicAdvertisingManager"

.field private static final TIMEOUT_MAX:I = 0x4000

.field private static final TIMEOUT_MIN:I = 0xa


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/PeriodicAdvertisingCallback;",
            "Landroid/bluetooth/le/IPeriodicAdvertisingCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 1
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    .line 72
    return-void
.end method

.method private wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 201
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-object v0
.end method


# virtual methods
.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 94
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    .line 95
    return-void
.end method

.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 118
    if-eqz p4, :cond_5

    .line 122
    if-eqz p1, :cond_4

    .line 126
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    .line 130
    if-ltz p2, :cond_2

    const/16 v0, 0x1f3

    if-gt p2, v0, :cond_2

    .line 135
    const/16 v0, 0xa

    if-lt p3, v0, :cond_1

    const/16 v0, 0x4000

    if-gt p3, v0, :cond_1

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .local v0, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 148
    nop

    .line 151
    if-nez p5, :cond_0

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p5, v1

    .line 155
    :cond_0
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    .line 156
    .local v1, "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :try_start_1
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothGatt;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    nop

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PeriodicAdvertisingManager"

    const-string v4, "Failed to register sync - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    return-void

    .line 143
    .end local v0    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v1    # "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PeriodicAdvertisingManager"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v6

    const/4 v9, 0x2

    move-object v3, p4

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 148
    return-void

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be between 10 and 16384"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be between 10 and 16384"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult must contain a valid sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterSync(Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 174
    if-eqz p1, :cond_1

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .local v0, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 183
    nop

    .line 186
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 187
    .local v1, "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    if-eqz v1, :cond_0

    .line 192
    :try_start_1
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    nop

    .line 197
    return-void

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PeriodicAdvertisingManager"

    const-string v4, "Failed to cancel sync creation - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-void

    .line 188
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback was not properly registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    .end local v0    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v1    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PeriodicAdvertisingManager"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    return-void

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
