.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.codec.extra.CODEC_STATUS"


# instance fields
.field private final mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private final mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

.field private final mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 0
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .param p2, "codecsLocalCapabilities"    # [Landroid/bluetooth/BluetoothCodecConfig;
    .param p3, "codecsSelectableCapabilities"    # [Landroid/bluetooth/BluetoothCodecConfig;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 51
    iput-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 52
    iput-object p3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 53
    return-void
.end method

.method public static sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 3
    .param p0, "c1"    # [Landroid/bluetooth/BluetoothCodecConfig;
    .param p1, "c2"    # [Landroid/bluetooth/BluetoothCodecConfig;

    .line 77
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 80
    :cond_1
    if-nez p1, :cond_2

    .line 81
    return v0

    .line 83
    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_3

    .line 84
    return v0

    .line 86
    :cond_3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecStatus;

    .line 59
    .local v0, "other":Landroid/bluetooth/BluetoothCodecStatus;
    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 60
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 61
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 59
    :cond_0
    return v1

    .line 64
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecStatus;
    :cond_1
    return v1
.end method

.method public getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 132
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 133
    return-void
.end method
