.class public Landroid/bluetooth/SdpMasRecord;
.super Ljava/lang/Object;
.source "SdpMasRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpMasRecord$MessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mMasInstanceId:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I

.field private final mSupportedMessageTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Landroid/bluetooth/SdpMasRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMasRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMasRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "masInstanceId"    # I
    .param p2, "l2capPsm"    # I
    .param p3, "rfcommChannelNumber"    # I
    .param p4, "profileVersion"    # I
    .param p5, "supportedFeatures"    # I
    .param p6, "supportedMessageTypes"    # I
    .param p7, "serviceName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 46
    iput p2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 47
    iput p3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 48
    iput p4, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 49
    iput p5, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 50
    iput p6, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 51
    iput-object p7, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    return v0
.end method

.method public getMasInstanceId()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    .line 83
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    return v0
.end method

.method public getRfcommCannelNumber()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .line 87
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    return v0
.end method

.method public getSupportedMessageTypes()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    return v0
.end method

.method public msgSupported(I)Z
    .locals 1
    .param p1, "msg"    # I

    .line 95
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 115
    const-string v0, "Bluetooth MAS SDP Record:\n"

    .line 117
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Mas Instance Id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    if-eq v1, v2, :cond_1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RFCOMM Chan Number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_1
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    if-eq v1, v2, :cond_2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "L2CAP PSM: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Service Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_3
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    if-eq v1, v2, :cond_4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Profile version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_4
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    if-eq v1, v2, :cond_5

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Supported msg types: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_5
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    if-eq v1, v2, :cond_6

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Supported features: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return-void
.end method
