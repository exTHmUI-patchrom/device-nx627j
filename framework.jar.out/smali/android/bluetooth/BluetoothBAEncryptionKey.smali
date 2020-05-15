.class public final Landroid/bluetooth/BluetoothBAEncryptionKey;
.super Ljava/lang/Object;
.source "BluetoothBAEncryptionKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothBAEncryptionKey;",
            ">;"
        }
    .end annotation
.end field

.field public static ENCRYPTION_KEY_LENGTH:I = 0x0

.field public static SECURITY_KEY_FORWARD_ENABLED:I = 0x0

.field public static SECURITY_KEY_TYPE_PRIVATE:I = 0x0

.field public static SECURITY_KEY_TYPE_TEMP:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BluetoothBAEncryptionKey"


# instance fields
.field private mEncryptionKey:[B

.field private mFlagType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/16 v0, 0x10

    sput v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->ENCRYPTION_KEY_LENGTH:I

    .line 47
    const/4 v0, 0x1

    sput v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->SECURITY_KEY_TYPE_PRIVATE:I

    .line 48
    const/4 v0, 0x2

    sput v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->SECURITY_KEY_TYPE_TEMP:I

    .line 49
    const/16 v0, 0x80

    sput v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->SECURITY_KEY_FORWARD_ENABLED:I

    .line 63
    new-instance v0, Landroid/bluetooth/BluetoothBAEncryptionKey$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothBAEncryptionKey$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->ENCRYPTION_KEY_LENGTH:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mEncryptionKey:[B

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Landroid/bluetooth/BluetoothBAEncryptionKey;->ENCRYPTION_KEY_LENGTH:I

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mEncryptionKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mFlagType:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothBAEncryptionKey$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/BluetoothBAEncryptionKey$1;

    .line 42
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothBAEncryptionKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "mEncKey"    # [B
    .param p2, "flagType"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Landroid/bluetooth/BluetoothBAEncryptionKey;->ENCRYPTION_KEY_LENGTH:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mEncryptionKey:[B

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Landroid/bluetooth/BluetoothBAEncryptionKey;->ENCRYPTION_KEY_LENGTH:I

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mEncryptionKey:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_0
    iput p2, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mFlagType:I

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mEncryptionKey:[B

    return-object v0
.end method

.method public getFlagType()I
    .locals 1

    .line 103
    iget v0, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mFlagType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    sget v1, Landroid/bluetooth/BluetoothBAEncryptionKey;->ENCRYPTION_KEY_LENGTH:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mEncryptionKey:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "k":I
    :cond_0
    iget v0, p0, Landroid/bluetooth/BluetoothBAEncryptionKey;->mFlagType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
