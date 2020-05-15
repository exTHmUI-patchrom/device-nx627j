.class public final Landroid/bluetooth/BluetoothActivityEnergyInfo;
.super Ljava/lang/Object;
.source "BluetoothActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BT_STACK_STATE_INVALID:I = 0x0

.field public static final BT_STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final BT_STACK_STATE_STATE_IDLE:I = 0x3

.field public static final BT_STACK_STATE_STATE_SCANNING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothStackState:I

.field private mControllerEnergyUsed:J

.field private mControllerIdleTimeMs:J

.field private mControllerRxTimeMs:J

.field private mControllerTxTimeMs:J

.field private final mTimestamp:J

.field private mUidTraffic:[Landroid/bluetooth/UidTraffic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJJJJ)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "stackState"    # I
    .param p4, "txTime"    # J
    .param p6, "rxTime"    # J
    .param p8, "idleTime"    # J
    .param p10, "energyUsed"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    .line 48
    iput p3, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    .line 49
    iput-wide p4, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 50
    iput-wide p6, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 51
    iput-wide p8, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 52
    iput-wide p10, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 63
    sget-object v0, Landroid/bluetooth/UidTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/UidTraffic;

    iput-object v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothStackState()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    .line 142
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    .line 133
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    .line 126
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    .line 119
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 149
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getUidTraffic()[Landroid/bluetooth/UidTraffic;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .line 164
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setUidTraffic([Landroid/bluetooth/UidTraffic;)V
    .locals 0
    .param p1, "traffic"    # [Landroid/bluetooth/UidTraffic;

    .line 157
    iput-object p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothActivityEnergyInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mBluetoothStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mControllerTxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mUidTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mUidTraffic:[Landroid/bluetooth/UidTraffic;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 101
    return-void
.end method
