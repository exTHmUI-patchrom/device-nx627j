.class public final Landroid/net/wifi/WifiActivityEnergyInfo;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_STATE_INVALID:I = 0x0

.field public static final STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final STACK_STATE_STATE_IDLE:I = 0x3

.field public static final STACK_STATE_STATE_SCANNING:I = 0x2


# instance fields
.field public mControllerEnergyUsed:J

.field public mControllerIdleTimeMs:J

.field public mControllerRxTimeMs:J

.field public mControllerScanTimeMs:J

.field public mControllerTxTimeMs:J

.field public mControllerTxTimePerLevelMs:[J

.field public mStackState:I

.field public mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJ[JJJJJ)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "stackState"    # I
    .param p4, "txTime"    # J
    .param p6, "txTimePerLevel"    # [J
    .param p7, "rxTime"    # J
    .param p9, "scanTime"    # J
    .param p11, "idleTime"    # J
    .param p13, "energyUsed"    # J

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 80
    iput p3, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 81
    iput-wide p4, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 82
    iput-object p6, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    .line 83
    iput-wide p7, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 84
    iput-wide p9, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 85
    iput-wide p11, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 86
    iput-wide p13, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    .line 187
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    .line 179
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    .line 165
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    return-wide v0
.end method

.method public getControllerScanTimeMillis()J
    .locals 2

    .line 172
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    .line 148
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillisAtLevel(I)J
    .locals 2
    .param p1, "level"    # I

    .line 155
    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 158
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStackState()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 193
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .line 200
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiActivityEnergyInfo{ timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mControllerTxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerTxTimePerLevelMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mControllerRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerScanTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 127
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    return-void
.end method
