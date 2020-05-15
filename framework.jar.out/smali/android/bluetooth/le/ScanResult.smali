.class public final Landroid/bluetooth/le/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_COMPLETE:I = 0x0

.field public static final DATA_TRUNCATED:I = 0x2

.field private static final ET_CONNECTABLE_MASK:I = 0x1

.field private static final ET_LEGACY_MASK:I = 0x10

.field public static final PERIODIC_INTERVAL_NOT_PRESENT:I = 0x0

.field public static final PHY_UNUSED:I = 0x0

.field public static final SID_NOT_PRESENT:I = 0xff

.field public static final TX_POWER_NOT_PRESENT:I = 0x7f


# instance fields
.field private mAdvertisingSid:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEventType:I

.field private mPeriodicAdvertisingInterval:I

.field private mPrimaryPhy:I

.field private mRssi:I

.field private mScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private mSecondaryPhy:I

.field private mTimestampNanos:J

.field private mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Landroid/bluetooth/le/ScanResult$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanResult$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "eventType"    # I
    .param p3, "primaryPhy"    # I
    .param p4, "secondaryPhy"    # I
    .param p5, "advertisingSid"    # I
    .param p6, "txPower"    # I
    .param p7, "rssi"    # I
    .param p8, "periodicAdvertisingInterval"    # I
    .param p9, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p10, "timestampNanos"    # J

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 137
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 138
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 139
    iput p4, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 140
    iput p5, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 141
    iput p6, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 142
    iput p7, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 143
    iput p8, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 144
    iput-object p9, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 145
    iput-wide p10, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p3, "rssi"    # I
    .param p4, "timestampNanos"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 108
    iput-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 109
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 110
    iput-wide p4, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 111
    const/16 v0, 0x11

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 114
    const/16 v1, 0xff

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 115
    const/16 v1, 0x7f

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 116
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 117
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/le/ScanResult$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 191
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 313
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 314
    return v0

    .line 316
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 320
    .local v2, "other":Landroid/bluetooth/le/ScanResult;
    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v2, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v2, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 321
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    iget-wide v5, v2, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mEventType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 317
    .end local v2    # "other":Landroid/bluetooth/le/ScanResult;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAdvertisingSid()I
    .locals 1

    .line 281
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    return v0
.end method

.method public getDataStatus()I
    .locals 1

    .line 250
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getPeriodicAdvertisingInterval()I
    .locals 1

    .line 300
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return v0
.end method

.method public getPrimaryPhy()I
    .locals 1

    .line 260
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 217
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Landroid/bluetooth/le/ScanRecord;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public getSecondaryPhy()I
    .locals 1

    .line 272
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    return v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 224
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public getTxPower()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 305
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 305
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnectable()Z
    .locals 2

    .line 240
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLegacy()Z
    .locals 1

    .line 233
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 334
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", advertisingSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", periodicAdvertisingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_1
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void
.end method
