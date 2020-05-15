.class public Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLeBluetoothDeviceAddress:[B

.field private mLeSecureConnectionsConfirmation:[B

.field private mLeSecureConnectionsRandom:[B

.field private mSecurityManagerTk:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/OobData$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getLeBluetoothDeviceAddress()[B
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    return-object v0
.end method

.method public getLeSecureConnectionsConfirmation()[B
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    return-object v0
.end method

.method public getLeSecureConnectionsRandom()[B
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    return-object v0
.end method

.method public getSecurityManagerTk()[B
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    return-object v0
.end method

.method public setLeBluetoothDeviceAddress([B)V
    .locals 0
    .param p1, "leBluetoothDeviceAddress"    # [B

    .line 46
    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    .line 47
    return-void
.end method

.method public setLeSecureConnectionsConfirmation([B)V
    .locals 0
    .param p1, "leSecureConnectionsConfirmation"    # [B

    .line 67
    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    .line 68
    return-void
.end method

.method public setLeSecureConnectionsRandom([B)V
    .locals 0
    .param p1, "leSecureConnectionsRandom"    # [B

    .line 75
    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    .line 76
    return-void
.end method

.method public setSecurityManagerTk([B)V
    .locals 0
    .param p1, "securityManagerTk"    # [B

    .line 59
    iput-object p1, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    iget-object v0, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    return-void
.end method
