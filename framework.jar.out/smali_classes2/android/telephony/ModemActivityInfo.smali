.class public Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_POWER_LEVELS:I = 0x5


# instance fields
.field private mEnergyUsed:I

.field private mIdleTimeMs:I

.field private mRxTimeMs:I

.field private mSleepTimeMs:I

.field private mTimestamp:J

.field private mTxTimeMs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII[III)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "txTimeMs"    # [I
    .param p6, "rxTimeMs"    # I
    .param p7, "energyUsed"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    .line 48
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 49
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 50
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 51
    if-eqz p5, :cond_0

    .line 52
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    array-length v2, p5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    :cond_0
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    .line 55
    iput p7, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    .line 56
    return-void
.end method

.method private isEmpty()Z
    .locals 5

    .line 189
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 190
    .local v4, "txVal":I
    if-eqz v4, :cond_0

    .line 191
    return v2

    .line 189
    .end local v4    # "txVal":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-nez v0, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const/4 v2, 0x1

    goto :goto_1

    .line 196
    :cond_2
    nop

    .line 195
    :goto_1
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyUsed()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    return v0
.end method

.method public getIdleTimeMillis()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return v0
.end method

.method public getRxTimeMillis()I
    .locals 1

    .line 155
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return v0
.end method

.method public getSleepTimeMillis()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 110
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTxTimeMillis()[I
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    .line 178
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 179
    .local v4, "txVal":I
    if-gez v4, :cond_0

    .line 180
    return v2

    .line 178
    .end local v4    # "txVal":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-ltz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    const/4 v2, 0x1

    goto :goto_1

    .line 185
    :cond_2
    nop

    .line 184
    :goto_1
    return v2
.end method

.method public setEnergyUsed(I)V
    .locals 0
    .param p1, "energyUsed"    # I

    .line 171
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    .line 172
    return-void
.end method

.method public setIdleTimeMillis(I)V
    .locals 0
    .param p1, "idleTimeMillis"    # I

    .line 148
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 149
    return-void
.end method

.method public setRxTimeMillis(I)V
    .locals 0
    .param p1, "rxTimeMillis"    # I

    .line 159
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    .line 160
    return-void
.end method

.method public setSleepTimeMillis(I)V
    .locals 0
    .param p1, "sleepTimeMillis"    # I

    .line 137
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 138
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 114
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 115
    return-void
.end method

.method public setTxTimeMillis([I)V
    .locals 0
    .param p1, "txTimeMs"    # [I

    .line 126
    iput-object p1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
