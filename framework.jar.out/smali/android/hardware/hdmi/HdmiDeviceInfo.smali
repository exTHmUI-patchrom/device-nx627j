.class public Landroid/hardware/hdmi/HdmiDeviceInfo;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ADDR_INTERNAL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_AUDIO_SYSTEM:I = 0x5

.field public static final DEVICE_INACTIVE:I = -0x1

.field public static final DEVICE_PLAYBACK:I = 0x4

.field public static final DEVICE_PURE_CEC_SWITCH:I = 0x6

.field public static final DEVICE_RECORDER:I = 0x1

.field public static final DEVICE_RESERVED:I = 0x2

.field public static final DEVICE_TUNER:I = 0x3

.field public static final DEVICE_TV:I = 0x0

.field public static final DEVICE_VIDEO_PROCESSOR:I = 0x7

.field private static final HDMI_DEVICE_TYPE_CEC:I = 0x0

.field private static final HDMI_DEVICE_TYPE_HARDWARE:I = 0x2

.field private static final HDMI_DEVICE_TYPE_INACTIVE:I = 0x64

.field private static final HDMI_DEVICE_TYPE_MHL:I = 0x1

.field public static final ID_INVALID:I = 0xffff

.field private static final ID_OFFSET_CEC:I = 0x0

.field private static final ID_OFFSET_HARDWARE:I = 0xc0

.field private static final ID_OFFSET_MHL:I = 0x80

.field public static final INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public static final PATH_INTERNAL:I = 0x0

.field public static final PATH_INVALID:I = 0xffff

.field public static final PORT_INVALID:I = -0x1


# instance fields
.field private final mAdopterId:I

.field private final mDeviceId:I

.field private final mDevicePowerStatus:I

.field private final mDeviceType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mHdmiDeviceType:I

.field private final mId:I

.field private final mLogicalAddress:I

.field private final mPhysicalAddress:I

.field private final mPortId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 119
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 257
    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 258
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 261
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 262
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 263
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 264
    const-string v1, "Inactive"

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 265
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 267
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 268
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 269
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "physicalAddress"    # I
    .param p2, "portId"    # I

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 210
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 211
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 213
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForHardware(I)I

    move-result v1

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 214
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 215
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 217
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 220
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 221
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 222
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "physicalAddress"    # I
    .param p2, "portId"    # I
    .param p3, "adopterId"    # I
    .param p4, "deviceId"    # I

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 235
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 236
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 238
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForMhlDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 240
    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 241
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 242
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 243
    const-string v0, "Mobile"

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 245
    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 246
    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 247
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 8
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "portId"    # I
    .param p4, "deviceType"    # I
    .param p5, "vendorId"    # I
    .param p6, "displayName"    # Ljava/lang/String;

    .line 197
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;I)V
    .locals 1
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "portId"    # I
    .param p4, "deviceType"    # I
    .param p5, "vendorId"    # I
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "powerStatus"    # I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 170
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 171
    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 173
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 174
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 175
    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 176
    iput p5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 177
    iput p7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 178
    iput-object p6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 181
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 182
    return-void
.end method

.method public static idForCecDevice(I)I
    .locals 1
    .param p0, "address"    # I

    .line 286
    const/4 v0, 0x0

    add-int/2addr v0, p0

    return v0
.end method

.method public static idForHardware(I)I
    .locals 1
    .param p0, "portId"    # I

    .line 307
    const/16 v0, 0xc0

    add-int/2addr v0, p0

    return v0
.end method

.method public static idForMhlDevice(I)I
    .locals 1
    .param p0, "portId"    # I

    .line 297
    const/16 v0, 0x80

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 497
    instance-of v0, p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 498
    return v1

    .line 501
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 502
    .local v0, "other":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 509
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    .line 502
    :cond_1
    return v1
.end method

.method public getAdopterId()I
    .locals 1

    .line 364
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 357
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public getDevicePowerStatus()I
    .locals 1

    .line 350
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 336
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 275
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    return v0
.end method

.method public getLogicalAddress()I
    .locals 1

    .line 314
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method public getPhysicalAddress()I
    .locals 1

    .line 321
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method public getPortId()I
    .locals 1

    .line 328
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .line 418
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return v0
.end method

.method public isCecDevice()Z
    .locals 1

    .line 387
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInactivated()Z
    .locals 2

    .line 403
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMhlDevice()Z
    .locals 2

    .line 395
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSourceType()Z
    .locals 4

    .line 371
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 372
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    return v1

    .line 375
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isMhlDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    return v2

    .line 378
    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v0, "s":Ljava/lang/StringBuffer;
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 487
    const-string v1, ""

    return-object v1

    .line 481
    :pswitch_0
    const-string v1, "Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    goto/16 :goto_0

    .line 475
    :pswitch_1
    const-string v1, "MHL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v1, "device_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x%04X"

    new-array v2, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v1, "adopter_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x%04X"

    new-array v2, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    goto :goto_0

    .line 466
    :pswitch_2
    const-string v1, "CEC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    const-string/jumbo v1, "logical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x%02X"

    new-array v2, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const-string v1, "device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string/jumbo v1, "vendor_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v1, "display_name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string/jumbo v1, "power_status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    goto :goto_0

    .line 484
    :cond_0
    const-string v1, "Inactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    nop

    .line 489
    :goto_0
    const-string/jumbo v1, "physical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x%04X"

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string/jumbo v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 439
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 451
    :pswitch_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    goto :goto_0

    .line 444
    :pswitch_1
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    nop

    .line 459
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
