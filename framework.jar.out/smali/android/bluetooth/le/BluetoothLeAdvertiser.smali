.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x672

.field private static final MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private final mAdvertisingSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/le/AdvertisingSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            "Landroid/bluetooth/le/IAdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLegacyAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 47
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 47
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 47
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    return-object v0
.end method

.method private byteLength([B)I
    .locals 1
    .param p1, "array"    # [B

    .line 522
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    return v0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .line 660
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    return-void
.end method

.method private postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p3, "error"    # I

    .line 651
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 670
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .locals 9
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    .line 473
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 475
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 476
    .local v1, "size":I
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, "num16BitUuids":I
    const/4 v4, 0x0

    .line 479
    .local v4, "num32BitUuids":I
    const/4 v5, 0x0

    .line 480
    .local v5, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 481
    .local v7, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 483
    :cond_2
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 486
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 488
    .end local v7    # "uuid":Landroid/os/ParcelUuid;
    :goto_2
    goto :goto_1

    .line 490
    :cond_4
    if-eqz v2, :cond_5

    .line 491
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    add-int/2addr v1, v6

    .line 494
    :cond_5
    if-eqz v4, :cond_6

    .line 495
    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    add-int/2addr v1, v6

    .line 498
    :cond_6
    if-eqz v5, :cond_7

    .line 499
    mul-int/lit8 v6, v5, 0x10

    add-int/2addr v6, v3

    add-int/2addr v1, v6

    .line 503
    .end local v2    # "num16BitUuids":I
    .end local v4    # "num32BitUuids":I
    .end local v5    # "num128BitUuids":I
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 504
    .local v4, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v5

    array-length v5, v5

    .line 505
    .local v5, "uuidLen":I
    add-int v6, v3, v5

    .line 506
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 507
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    .end local v5    # "uuidLen":I
    goto :goto_3

    .line 508
    :cond_8
    nop

    .local v0, "i":I
    :goto_4
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 509
    nop

    .line 510
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v2

    const/4 v4, 0x4

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 512
    .end local v0    # "i":I
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 513
    add-int/lit8 v1, v1, 0x3

    .line 515
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 516
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 518
    :cond_b
    return v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 467
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 468
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 469
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 94
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 19
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    move-object/from16 v10, p0

    .line 112
    move-object/from16 v11, p4

    iget-object v12, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v12

    .line 113
    :try_start_0
    iget-object v0, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 114
    if-eqz v11, :cond_c

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    .local v0, "isConnectable":Z
    move-object/from16 v13, p2

    :try_start_1
    invoke-direct {v10, v13, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-gt v1, v2, :cond_b

    const/4 v1, 0x0

    .line 119
    move-object/from16 v14, p3

    :try_start_2
    invoke-direct {v10, v14, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-le v1, v2, :cond_0

    goto/16 :goto_3

    .line 123
    :cond_0
    iget-object v1, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    .line 124
    invoke-direct {v10, v11, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 125
    monitor-exit v12

    return-void

    .line 128
    :cond_1
    new-instance v1, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;-><init>()V

    move-object v15, v1

    .line 129
    .local v15, "parameters":Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 130
    invoke-virtual {v15, v0}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 131
    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_2

    .line 133
    const/16 v1, 0x640

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 135
    const/16 v1, 0x190

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 137
    const/16 v1, 0xa0

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 140
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-nez v1, :cond_5

    .line 141
    const/16 v1, -0x15

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 143
    const/16 v1, -0xf

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 145
    const/4 v1, -0x7

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    .line 146
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 147
    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 150
    :cond_8
    :goto_1
    const/4 v1, 0x0

    .line 151
    .local v1, "duration":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v2

    move v9, v2

    .line 152
    .local v9, "timeoutMillis":I
    if-lez v9, :cond_a

    .line 153
    const/16 v2, 0xa

    if-ge v9, v2, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v3, v9, 0xa

    :goto_2
    move v1, v3

    .line 156
    .end local v1    # "duration":I
    .local v16, "duration":I
    :cond_a
    move/from16 v16, v1

    move-object/from16 v8, p1

    invoke-virtual {v10, v11, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;

    move-result-object v1

    move-object v7, v1

    .line 157
    .local v7, "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    iget-object v1, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v15}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->build()Landroid/bluetooth/le/AdvertisingSetParameters;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object v1, v10

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v18, v7

    move/from16 v7, v16

    .end local v7    # "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    .local v18, "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    move/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v18

    .end local v9    # "timeoutMillis":I
    .local v17, "timeoutMillis":I
    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V

    .line 160
    .end local v0    # "isConnectable":Z
    .end local v15    # "parameters":Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .end local v16    # "duration":I
    .end local v17    # "timeoutMillis":I
    .end local v18    # "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    monitor-exit v12

    .line 161
    return-void

    .line 120
    .restart local v0    # "isConnectable":Z
    :cond_b
    move-object/from16 v14, p3

    :goto_3
    invoke-direct {v10, v11, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 121
    monitor-exit v12

    return-void

    .line 160
    .end local v0    # "isConnectable":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 115
    :cond_c
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :catchall_1
    move-exception v0

    move-object/from16 v13, p2

    :goto_4
    move-object/from16 v14, p3

    :goto_5
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 10
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 306
    new-instance v9, Landroid/os/Handler;

    .line 308
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 309
    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .locals 19
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p9, "handler"    # Landroid/os/Handler;

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    .line 346
    move-object/from16 v10, p9

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 347
    if-eqz v15, :cond_12

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isConnectable()Z

    move-result v9

    .line 352
    .local v9, "isConnectable":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 353
    invoke-direct {v1, v11, v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_1

    .line 357
    invoke-direct {v1, v12, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 394
    move-object/from16 v8, p5

    goto/16 :goto_2

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v0

    .line 362
    .local v0, "supportCodedPhy":Z
    iget-object v3, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v3

    .line 363
    .local v3, "support2MPhy":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getPrimaryPhy()I

    move-result v4

    .line 364
    .local v4, "pphy":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getSecondaryPhy()I

    move-result v5

    .line 365
    .local v5, "sphy":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    .line 366
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported primary PHY selected"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    :cond_4
    :goto_0
    if-ne v5, v6, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    .line 371
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported secondary PHY selected"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_7
    :goto_1
    iget-object v6, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getLeMaximumAdvertisingDataLength()I

    move-result v6

    .line 375
    .local v6, "maxData":I
    invoke-direct {v1, v11, v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v7

    if-gt v7, v6, :cond_11

    .line 379
    invoke-direct {v1, v12, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v7

    if-gt v7, v6, :cond_10

    .line 383
    move-object/from16 v8, p5

    invoke-direct {v1, v8, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v2

    if-gt v2, v6, :cond_f

    .line 387
    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v2

    .line 388
    .local v2, "supportPeriodic":Z
    if-eqz p4, :cond_9

    if-eqz v2, :cond_8

    .line 388
    .end local v0    # "supportCodedPhy":Z
    .end local v2    # "supportPeriodic":Z
    .end local v3    # "support2MPhy":Z
    .end local v4    # "pphy":I
    .end local v5    # "sphy":I
    .end local v6    # "maxData":I
    goto :goto_2

    .line 389
    .restart local v0    # "supportCodedPhy":Z
    .restart local v2    # "supportPeriodic":Z
    .restart local v3    # "support2MPhy":Z
    .restart local v4    # "pphy":I
    .restart local v5    # "sphy":I
    .restart local v6    # "maxData":I
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move/from16 v16, v0

    const-string v0, "Controller does not support LE Periodic Advertising"

    .line 389
    .end local v0    # "supportCodedPhy":Z
    .local v16, "supportCodedPhy":Z
    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 394
    .end local v2    # "supportPeriodic":Z
    .end local v3    # "support2MPhy":Z
    .end local v4    # "pphy":I
    .end local v5    # "sphy":I
    .end local v6    # "maxData":I
    .end local v16    # "supportCodedPhy":Z
    :cond_9
    :goto_2
    if-ltz v14, :cond_e

    const/16 v0, 0xff

    if-gt v14, v0, :cond_e

    .line 399
    if-eqz v14, :cond_b

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 400
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 401
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use maxExtendedAdvertisingEvents with controller that don\'t support LE Extended Advertising"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_b
    :goto_3
    if-ltz v13, :cond_d

    const v0, 0xffff

    if-gt v13, v0, :cond_d

    .line 412
    const/4 v7, 0x4

    :try_start_0
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 418
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 417
    nop

    .line 420
    invoke-virtual {v1, v15, v10}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v6

    .line 421
    .local v6, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 427
    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v16, v6

    move-object/from16 v6, p4

    .line 427
    .end local v6    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .local v16, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    move v11, v7

    move-object v7, v8

    move v8, v13

    move/from16 v17, v9

    move v9, v14

    .line 427
    .end local v9    # "isConnectable":Z
    .local v17, "isConnectable":Z
    move-object v11, v10

    move-object/from16 v10, v16

    :try_start_1
    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    nop

    .line 435
    return-void

    .line 429
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothLeAdvertiser"

    const-string v4, "Failed to start advertising set - "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    const/4 v3, 0x4

    invoke-direct {v1, v11, v15, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 433
    return-void

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v17    # "isConnectable":Z
    .restart local v6    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .restart local v9    # "isConnectable":Z
    :cond_c
    move-object/from16 v16, v6

    move/from16 v17, v9

    move-object v11, v10

    .line 422
    .end local v6    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v9    # "isConnectable":Z
    .restart local v16    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .restart local v17    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback instance already associated with advertising"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v16    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v17    # "isConnectable":Z
    .restart local v9    # "isConnectable":Z
    :catch_1
    move-exception v0

    move/from16 v17, v9

    move-object v11, v10

    .line 414
    .end local v9    # "isConnectable":Z
    .restart local v0    # "e":Landroid/os/RemoteException;
    .restart local v17    # "isConnectable":Z
    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to get Bluetooth gatt - "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    const/4 v2, 0x4

    invoke-direct {v1, v11, v15, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 417
    return-void

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "isConnectable":Z
    .restart local v9    # "isConnectable":Z
    :cond_d
    move/from16 v17, v9

    move-object v11, v10

    .line 407
    .end local v9    # "isConnectable":Z
    .restart local v17    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    .end local v17    # "isConnectable":Z
    .restart local v9    # "isConnectable":Z
    :cond_e
    move/from16 v17, v9

    move-object v11, v10

    .line 395
    .end local v9    # "isConnectable":Z
    .restart local v17    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxExtendedAdvertisingEvents out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    .end local v17    # "isConnectable":Z
    .local v0, "supportCodedPhy":Z
    .restart local v3    # "support2MPhy":Z
    .restart local v4    # "pphy":I
    .restart local v5    # "sphy":I
    .local v6, "maxData":I
    .restart local v9    # "isConnectable":Z
    :cond_f
    move/from16 v16, v0

    move/from16 v17, v9

    move-object v11, v10

    .line 384
    .end local v0    # "supportCodedPhy":Z
    .end local v9    # "isConnectable":Z
    .local v16, "supportCodedPhy":Z
    .restart local v17    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Periodic advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    .end local v16    # "supportCodedPhy":Z
    .end local v17    # "isConnectable":Z
    .restart local v0    # "supportCodedPhy":Z
    .restart local v9    # "isConnectable":Z
    :cond_10
    move/from16 v16, v0

    move/from16 v17, v9

    move-object v11, v10

    .line 380
    .end local v0    # "supportCodedPhy":Z
    .end local v9    # "isConnectable":Z
    .restart local v16    # "supportCodedPhy":Z
    .restart local v17    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    .end local v16    # "supportCodedPhy":Z
    .end local v17    # "isConnectable":Z
    .restart local v0    # "supportCodedPhy":Z
    .restart local v9    # "isConnectable":Z
    :cond_11
    move/from16 v16, v0

    move/from16 v17, v9

    move-object v11, v10

    .line 376
    .end local v0    # "supportCodedPhy":Z
    .end local v9    # "isConnectable":Z
    .restart local v16    # "supportCodedPhy":Z
    .restart local v17    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    .end local v3    # "support2MPhy":Z
    .end local v4    # "pphy":I
    .end local v5    # "sphy":I
    .end local v6    # "maxData":I
    .end local v16    # "supportCodedPhy":Z
    .end local v17    # "isConnectable":Z
    :cond_12
    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 10
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 239
    new-instance v9, Landroid/os/Handler;

    .line 240
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 241
    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p7, "handler"    # Landroid/os/Handler;

    .line 270
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 272
    return-void
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 201
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v0

    .line 202
    if-eqz p1, :cond_1

    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 206
    .local v1, "wrapper":Landroid/bluetooth/le/AdvertisingSetCallback;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V

    .line 210
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v1    # "wrapper":Landroid/bluetooth/le/AdvertisingSetCallback;
    monitor-exit v0

    .line 212
    return-void

    .line 203
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 442
    if-eqz p1, :cond_1

    .line 446
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 447
    .local v0, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    if-nez v0, :cond_0

    .line 448
    return-void

    .line 453
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 454
    .local v1, "gatt":Landroid/bluetooth/IBluetoothGatt;
    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    goto :goto_0

    .line 455
    .end local v1    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to stop advertising - "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 443
    .end local v0    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 526
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V

    return-object v0
.end method

.method wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 164
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method
