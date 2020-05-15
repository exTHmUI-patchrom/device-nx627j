.class public final Landroid/media/midi/MidiDeviceInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceInfo$PortInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_ALSA_CARD:Ljava/lang/String; = "alsa_card"

.field public static final PROPERTY_ALSA_DEVICE:Ljava/lang/String; = "alsa_device"

.field public static final PROPERTY_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field public static final PROPERTY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field public static final PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final PROPERTY_SERVICE_INFO:Ljava/lang/String; = "service_info"

.field public static final PROPERTY_USB_DEVICE:Ljava/lang/String; = "usb_device"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "MidiDeviceInfo"

.field public static final TYPE_BLUETOOTH:I = 0x3

.field public static final TYPE_USB:I = 0x1

.field public static final TYPE_VIRTUAL:I = 0x2


# instance fields
.field private final mId:I

.field private final mInputPortCount:I

.field private final mInputPortNames:[Ljava/lang/String;

.field private final mIsPrivate:Z

.field private final mOutputPortCount:I

.field private final mOutputPortNames:[Ljava/lang/String;

.field private final mProperties:Landroid/os/Bundle;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Landroid/media/midi/MidiDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "numInputPorts"    # I
    .param p4, "numOutputPorts"    # I
    .param p5, "inputPortNames"    # [Ljava/lang/String;
    .param p6, "outputPortNames"    # [Ljava/lang/String;
    .param p7, "properties"    # Landroid/os/Bundle;
    .param p8, "isPrivate"    # Z

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    .line 209
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    .line 210
    iput p3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    .line 211
    iput p4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    .line 212
    if-nez p5, :cond_0

    .line 213
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_0
    iput-object p5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    .line 217
    :goto_0
    if-nez p6, :cond_1

    .line 218
    new-array v0, p4, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    goto :goto_1

    .line 220
    :cond_1
    iput-object p6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    .line 222
    :goto_1
    iput-object p7, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    .line 223
    iput-boolean p8, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    .line 224
    return-void
.end method

.method private getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "basicProperties":Landroid/os/Bundle;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 357
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 358
    .local v4, "val":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 359
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 360
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 362
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 364
    :cond_1
    const-string v5, "MidiDeviceInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported property type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_3
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    instance-of v0, p1, Landroid/media/midi/MidiDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 305
    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    iget v0, v0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 307
    :cond_1
    return v1
.end method

.method public getId()I
    .locals 1

    .line 242
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public getInputPortCount()I
    .locals 1

    .line 251
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    return v0
.end method

.method public getOutputPortCount()I
    .locals 1

    .line 260
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    return v0
.end method

.method public getPorts()[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    .locals 8

    .line 270
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/media/midi/MidiDeviceInfo$PortInfo;

    .line 272
    .local v0, "ports":[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    const/4 v1, 0x0

    .line 273
    .local v1, "index":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "index":I
    :goto_0
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    if-ge v1, v4, :cond_0

    .line 274
    add-int/lit8 v4, v3, 0x1

    .local v4, "index":I
    new-instance v5, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v6, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v7, v1, v6}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v5, v0, v3

    .line 273
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_0
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-ge v1, v2, :cond_1

    .line 277
    add-int/lit8 v2, v3, 0x1

    .local v2, "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {v4, v5, v1, v6}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v0, v3

    .line 276
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 280
    .end local v1    # "i":I
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_1
    return-object v0
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 313
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 320
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MidiDeviceInfo[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mInputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mOutputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 373
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "manufacturer"

    const-string/jumbo v3, "product"

    const-string/jumbo v4, "version"

    const-string/jumbo v5, "serial_number"

    const-string v6, "alsa_card"

    const-string v7, "alsa_device"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/midi/MidiDeviceInfo;->getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 388
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 389
    return-void
.end method
