.class public final Landroid/net/wifi/rtt/RangingResult;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/RangingResult$RangeResultStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_RESPONDER_DOES_NOT_SUPPORT_IEEE80211MC:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RangingResult"


# instance fields
.field private final mDistanceMm:I

.field private final mDistanceStdDevMm:I

.field private final mLci:[B

.field private final mLcr:[B

.field private final mMac:Landroid/net/MacAddress;

.field private final mNumAttemptedMeasurements:I

.field private final mNumSuccessfulMeasurements:I

.field private final mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private final mRssi:I

.field private final mStatus:I

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    .line 328
    new-instance v0, Landroid/net/wifi/rtt/RangingResult$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/RangingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/net/MacAddress;IIIII[B[BJ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "mac"    # Landroid/net/MacAddress;
    .param p3, "distanceMm"    # I
    .param p4, "distanceStdDevMm"    # I
    .param p5, "rssi"    # I
    .param p6, "numAttemptedMeasurements"    # I
    .param p7, "numSuccessfulMeasurements"    # I
    .param p8, "lci"    # [B
    .param p9, "lcr"    # [B
    .param p10, "timestamp"    # J

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    .line 92
    iput-object p2, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 94
    iput p3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    .line 95
    iput p4, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    .line 96
    iput p5, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 97
    iput p6, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 98
    iput p7, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    .line 99
    if-nez p8, :cond_0

    sget-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p8

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    .line 100
    if-nez p9, :cond_1

    sget-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    goto :goto_1

    :cond_1
    move-object v0, p9

    :goto_1
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    .line 101
    iput-wide p10, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    .line 102
    return-void
.end method

.method public constructor <init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BJ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p3, "distanceMm"    # I
    .param p4, "distanceStdDevMm"    # I
    .param p5, "rssi"    # I
    .param p6, "numAttemptedMeasurements"    # I
    .param p7, "numSuccessfulMeasurements"    # I
    .param p8, "lci"    # [B
    .param p9, "lcr"    # [B
    .param p10, "timestamp"    # J

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    .line 110
    iput-object p2, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 111
    iput p3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    .line 112
    iput p4, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    .line 113
    iput p5, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 114
    iput p6, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 115
    iput p7, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    .line 116
    if-nez p8, :cond_0

    sget-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p8

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    .line 117
    if-nez p9, :cond_1

    sget-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    goto :goto_1

    :cond_1
    move-object v0, p9

    :goto_1
    iput-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    .line 118
    iput-wide p10, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    .line 119
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 380
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 381
    return v0

    .line 384
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/RangingResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 385
    return v2

    .line 388
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/RangingResult;

    .line 390
    .local v1, "lhs":Landroid/net/wifi/rtt/RangingResult;
    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    .line 395
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    .line 390
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDistanceMm()I
    .locals 3

    .line 163
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 167
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    return v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDistanceMm(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDistanceStdDevMm()I
    .locals 3

    .line 181
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 185
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    return v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDistanceStdDevMm(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLci()[B
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 254
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLci(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLcr()[B
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 273
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReportedLocationCivic(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMacAddress()Landroid/net/MacAddress;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    return-object v0
.end method

.method public getNumAttemptedMeasurements()I
    .locals 3

    .line 212
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 217
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    return v0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumAttemptedMeasurements(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumSuccessfulMeasurements()I
    .locals 3

    .line 234
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 239
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    return v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumSuccessfulMeasurements(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerHandle()Landroid/net/wifi/aware/PeerHandle;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object v0
.end method

.method public getRangingTimestampMillis()J
    .locals 3

    .line 290
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 295
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    return-wide v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRangingTimestampMillis(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRssi()I
    .locals 3

    .line 195
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-nez v0, :cond_0

    .line 199
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    return v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssi(): invoked on an invalid result: getStatus()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatus()I
    .locals 1

    .line 127
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 401
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 401
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangingResult: [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peerHandle="

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 369
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distanceMm="

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distanceStdDevMm="

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numAttemptedMeasurements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numSuccessfulMeasurements="

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lci="

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lcr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 305
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 310
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 316
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v0, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    :goto_1
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 324
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 325
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    return-void
.end method
