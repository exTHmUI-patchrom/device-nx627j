.class public final Landroid/bluetooth/BluetoothHealthAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelType:I

.field private final mDataType:I

.field private final mName:Ljava/lang/String;

.field private final mRole:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    .line 44
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    .line 46
    const/16 v0, 0xc

    iput v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "role"    # I
    .param p4, "channelType"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    .line 60
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    .line 61
    iput p3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    .line 62
    iput p4, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 70
    .local v0, "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    return v1

    .line 72
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    .line 73
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    .line 72
    :cond_1
    return v1

    .line 75
    .end local v0    # "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_2
    return v1
.end method

.method public getChannelType()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    return v0
.end method

.method public getDataType()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 80
    const/16 v0, 0x11

    .line 81
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    .line 82
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    add-int/2addr v0, v3

    .line 83
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    add-int/2addr v2, v3

    .line 84
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    add-int/2addr v1, v0

    .line 85
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothHealthAppConfiguration [mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mChannelType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method
