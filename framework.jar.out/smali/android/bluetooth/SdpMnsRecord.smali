.class public Landroid/bluetooth/SdpMnsRecord;
.super Ljava/lang/Object;
.source "SdpMnsRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroid/bluetooth/SdpMnsRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMnsRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMnsRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "l2capPsm"    # I
    .param p2, "rfcommChannelNumber"    # I
    .param p3, "profileVersion"    # I
    .param p4, "supportedFeatures"    # I
    .param p5, "serviceName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    .line 34
    iput p2, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    .line 35
    iput p4, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    .line 36
    iput-object p5, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    .line 37
    iput p3, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    return v0
.end method

.method public getRfcommChannelNumber()I
    .locals 1

    .line 60
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .line 64
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    const-string v0, "Bluetooth MNS SDP Record:\n"

    .line 87
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RFCOMM Chan Number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    if-eq v1, v2, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "L2CAP PSM: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Service Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    if-eq v1, v2, :cond_3

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Supported features: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_3
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    if-eq v1, v2, :cond_4

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Profile_version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
