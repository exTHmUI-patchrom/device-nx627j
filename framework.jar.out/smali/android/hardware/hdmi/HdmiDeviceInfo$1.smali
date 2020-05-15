.class Landroid/hardware/hdmi/HdmiDeviceInfo$1;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 17
    .param p1, "source"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "hdmiDeviceType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 125
    .local v9, "physicalAddress":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 127
    .local v10, "portId":I
    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 145
    const/4 v1, 0x0

    return-object v1

    .line 141
    :pswitch_0
    new-instance v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v1, v9, v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    return-object v1

    .line 137
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "adopterId":I
    new-instance v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v3, v9, v10, v2, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    return-object v3

    .line 129
    .end local v1    # "deviceId":I
    .end local v2    # "adopterId":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 130
    .local v11, "logicalAddress":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 131
    .local v12, "deviceType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 132
    .local v13, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 133
    .local v14, "powerStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, "displayName":Ljava/lang/String;
    new-instance v16, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object/from16 v1, v16

    move v2, v11

    move v3, v9

    move v4, v10

    move v5, v12

    move v6, v13

    move-object v7, v15

    move v8, v14

    invoke-direct/range {v1 .. v8}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    return-object v16

    .line 143
    .end local v11    # "logicalAddress":I
    .end local v12    # "deviceType":I
    .end local v13    # "vendorId":I
    .end local v14    # "powerStatus":I
    .end local v15    # "displayName":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .line 151
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1
.end method
