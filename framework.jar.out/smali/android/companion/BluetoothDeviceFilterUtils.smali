.class public Landroid/companion/BluetoothDeviceFilterUtils;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothDeviceFilterUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugLogMatchResult(ZLandroid/bluetooth/BluetoothDevice;Ljava/lang/Object;)V
    .locals 3
    .param p0, "result"    # Z
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "criteria"    # Ljava/lang/Object;

    .line 119
    const-string v0, "BluetoothDeviceFilterUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v2, " ~ "

    goto :goto_0

    :cond_0
    const-string v2, " !~ "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method private static debugLogMatchResult(ZLandroid/net/wifi/ScanResult;Ljava/lang/Object;)V
    .locals 3
    .param p0, "result"    # Z
    .param p1, "device"    # Landroid/net/wifi/ScanResult;
    .param p2, "criteria"    # Ljava/lang/Object;

    .line 124
    const-string v0, "BluetoothDeviceFilterUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v2, " ~ "

    goto :goto_0

    :cond_0
    const-string v2, " !~ "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public static getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 128
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/net/wifi/ScanResult;

    .line 132
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/os/Parcelable;

    .line 136
    instance-of v0, p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 137
    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    instance-of v0, p0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_1
    instance-of v0, p0, Landroid/bluetooth/le/ScanResult;

    if-eqz v0, :cond_2

    .line 141
    move-object v0, p0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static matches(Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "filter"    # Landroid/bluetooth/le/ScanFilter;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Z
    :goto_0
    return v0
.end method

.method static matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "deviceAddress"    # Ljava/lang/String;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 60
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 63
    .local v0, "result":Z
    :goto_1
    return v0
.end method

.method static matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "namePattern"    # Ljava/util/regex/Pattern;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x1

    .local v0, "result":Z
    :goto_0
    goto :goto_2

    .line 93
    .end local v0    # "result":Z
    :cond_0
    if-nez p1, :cond_1

    .line 94
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    move v0, v1

    .line 100
    .local v0, "result":Z
    :goto_2
    return v0
.end method

.method static matchesName(Ljava/util/regex/Pattern;Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "namePattern"    # Ljava/util/regex/Pattern;
    .param p1, "device"    # Landroid/net/wifi/ScanResult;

    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x1

    .local v0, "result":Z
    :goto_0
    goto :goto_2

    .line 107
    .end local v0    # "result":Z
    :cond_0
    if-nez p1, :cond_1

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 111
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    move v0, v1

    .line 114
    .local v0, "result":Z
    :goto_2
    return v0
.end method

.method static matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p1, "serviceUuidMask"    # Landroid/os/ParcelUuid;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 80
    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-static {p0, p1, v0}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 86
    .local v0, "result":Z
    :goto_1
    return v0
.end method

.method static matchesServiceUuids(Ljava/util/List;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            ")Z"
        }
    .end annotation

    .line 68
    .local p0, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p1, "serviceUuidMasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 70
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 71
    .local v3, "uuidMask":Landroid/os/ParcelUuid;
    invoke-static {v2, v3, p2}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    return v0

    .line 68
    .end local v2    # "uuid":Landroid/os/ParcelUuid;
    .end local v3    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Ljava/util/regex/Pattern;

    .line 44
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
