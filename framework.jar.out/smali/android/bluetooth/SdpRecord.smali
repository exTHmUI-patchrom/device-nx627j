.class public Landroid/bluetooth/SdpRecord;
.super Ljava/lang/Object;
.source "SdpRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mRawData:[B

.field private final mRawSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroid/bluetooth/SdpRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "sizeRecord"    # I
    .param p2, "record"    # [B

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    .line 37
    iput p1, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

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

    iput v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    .line 42
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    .line 43
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    return-object v0
.end method

.method public getRawSize()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothSdpRecord [rawData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 58
    return-void
.end method
