.class public Lcom/android/internal/usb/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V
    .locals 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    .local v0, "token":J
    const-string v2, "manufacturer"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    const-string v2, "model"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 56
    const-string v2, "description"

    .line 57
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    .line 56
    const-wide v4, 0x10900000003L

    invoke-static {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 58
    const-string v2, "version"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    const-string v2, "uri"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000005L

    invoke-static {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    const-string v2, "serial"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method private static writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    .local v0, "token":J
    const-string v2, "id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 94
    const-string v2, "name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 95
    const-string v2, "attributes"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getAttributes()I

    move-result v3

    const-wide v4, 0x10d00000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    const-string v2, "max_power"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v3

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 98
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v2

    .line 99
    .local v2, "numInterfaces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 100
    const-string v4, "interfaces"

    const-wide v5, 0x20b00000005L

    .line 101
    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 100
    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/usb/DumpUtils;->writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 104
    return-void
.end method

.method private static writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "dataRole"    # I

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    :goto_0
    return-void
.end method

.method public static writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 69
    .local v0, "token":J
    const-string v2, "name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    const-string v2, "vendor_id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 71
    const-string v2, "product_id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 72
    const-string v2, "class"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 73
    const-string v2, "subclass"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v3

    const-wide v4, 0x10500000005L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 74
    const-string v2, "protocol"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 75
    const-string v2, "manufacturer_name"

    .line 76
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    .line 75
    const-wide v4, 0x10900000007L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 77
    const-string v2, "product_name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000008L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 78
    const-string v2, "version"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000009L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    const-string v2, "serial_number"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x1090000000aL

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v2

    .line 82
    .local v2, "numConfigurations":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 83
    const-string v4, "configurations"

    const-wide v5, 0x20b0000000bL

    .line 84
    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v7

    .line 83
    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/usb/DumpUtils;->writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 88
    return-void
.end method

.method private static writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V
    .locals 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 129
    .local v0, "token":J
    const-string v2, "endpoint_number"

    .line 130
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v3

    .line 129
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 131
    const-string v2, "direction"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    const-wide v4, 0x10e00000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 132
    const-string v2, "address"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    const-string v2, "type"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    const-wide v4, 0x10e00000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 134
    const-string v2, "attributes"

    .line 135
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    .line 134
    const-wide v4, 0x10d00000005L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 136
    const-string v2, "max_packet_size"

    .line 137
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    .line 136
    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 138
    const-string v2, "interval"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v3

    const-wide v4, 0x10500000007L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 141
    return-void
.end method

.method private static writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V
    .locals 8
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "iface"    # Landroid/hardware/usb/UsbInterface;

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    .local v0, "token":J
    const-string v2, "id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 111
    const-string v2, "alternate_settings"

    .line 112
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v3

    .line 111
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 113
    const-string v2, "name"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 114
    const-string v2, "class"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 115
    const-string v2, "subclass"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    const-wide v4, 0x10500000005L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 116
    const-string v2, "protocol"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 118
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    .line 119
    .local v2, "numEndpoints":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 120
    const-string v4, "endpoints"

    const-wide v5, 0x20b00000007L

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v7

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/usb/DumpUtils;->writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 123
    return-void
.end method

.method public static writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V
    .locals 7
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "port"    # Landroid/hardware/usb/UsbPort;

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    .local v0, "token":J
    const-string v2, "id"

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 149
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    .line 150
    .local v2, "mode":I
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-wide v4, 0x20e00000002L

    if-eqz v3, :cond_5

    .line 151
    if-nez v2, :cond_0

    .line 152
    const-string v3, "supported_modes"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    .line 154
    :cond_0
    and-int/lit8 v3, v2, 0x3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 155
    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 157
    :cond_1
    and-int/lit8 v3, v2, 0x2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 158
    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 159
    :cond_2
    and-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 160
    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 164
    :cond_3
    :goto_0
    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 165
    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 169
    :cond_4
    and-int/lit8 v3, v2, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_6

    .line 170
    const-string v3, "supported_modes"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    .line 175
    :cond_5
    const-string v3, "supported_modes"

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    :cond_6
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 179
    return-void
.end method

.method public static writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V
    .locals 14
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "status"    # Landroid/hardware/usb/UsbPortStatus;

    move-object v0, p0

    .line 202
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 204
    .local v1, "token":J
    const-string v3, "connected"

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    const-wide v5, 0x10800000001L

    invoke-virtual {v0, v3, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 206
    invoke-virtual {v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-wide v4, 0x10e00000002L

    if-eqz v3, :cond_0

    .line 207
    const-string v3, "current_mode"

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 209
    :cond_0
    const-string v3, "current_mode"

    .line 210
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 213
    :goto_0
    const-string v3, "power_role"

    const-wide v6, 0x10e00000003L

    .line 214
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v8

    .line 213
    invoke-static {v0, v3, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 215
    const-string v3, "data_role"

    const-wide v6, 0x10e00000004L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v8

    invoke-static {v0, v3, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 217
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v3

    .line 218
    .local v3, "undumpedCombinations":I
    :goto_1
    if-eqz v3, :cond_1

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    .line 220
    .local v6, "index":I
    const/4 v7, 0x1

    shl-int/2addr v7, v6

    not-int v7, v7

    and-int/2addr v3, v7

    .line 222
    div-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x0

    .line 224
    .local v7, "powerRole":I
    rem-int/lit8 v8, v6, 0x3

    .line 226
    .local v8, "dataRole":I
    const-string v9, "role_combinations"

    const-wide v10, 0x20b00000005L

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    .line 228
    .local v9, "roleCombinationToken":J
    const-string v11, "power_role"

    const-wide v12, 0x10e00000001L

    invoke-static {v0, v11, v12, v13, v7}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 230
    const-string v11, "data_role"

    invoke-static {v0, v11, v4, v5, v8}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 232
    invoke-virtual {v0, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 233
    .end local v6    # "index":I
    .end local v7    # "powerRole":I
    .end local v8    # "dataRole":I
    .end local v9    # "roleCombinationToken":J
    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 236
    return-void
.end method

.method private static writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "powerRole"    # I

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 188
    :goto_0
    return-void
.end method
