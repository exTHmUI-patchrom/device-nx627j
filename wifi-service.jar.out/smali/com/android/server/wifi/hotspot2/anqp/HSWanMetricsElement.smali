.class public Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "HSWanMetricsElement.java"


# static fields
.field public static final AT_CAPACITY_MASK:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPECTED_BUFFER_SIZE:I = 0xd
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LINK_STATUS_DOWN:I = 0x2

.field public static final LINK_STATUS_MASK:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LINK_STATUS_RESERVED:I = 0x0

.field public static final LINK_STATUS_TEST:I = 0x3

.field public static final LINK_STATUS_UP:I = 0x1

.field private static final MAX_LOAD:I = 0x100

.field public static final SYMMETRIC_LINK_MASK:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCapped:Z

.field private final mDownlinkLoad:I

.field private final mDownlinkSpeed:J

.field private final mLMD:I

.field private final mStatus:I

.field private final mSymmetric:Z

.field private final mUplinkLoad:I

.field private final mUplinkSpeed:J


# direct methods
.method public constructor <init>(IZZJJIII)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "symmetric"    # Z
    .param p3, "capped"    # Z
    .param p4, "downlinkSpeed"    # J
    .param p6, "uplinkSpeed"    # J
    .param p8, "downlinkLoad"    # I
    .param p9, "uplinkLoad"    # I
    .param p10, "lmd"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 72
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    .line 73
    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    .line 74
    iput-boolean p3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    .line 75
    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    .line 76
    iput-wide p6, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    .line 77
    iput p8, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    .line 78
    iput p9, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    .line 79
    iput p10, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    .line 80
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
    .locals 22
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 91
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 95
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 96
    .local v1, "wanInfo":I
    and-int/lit8 v13, v1, 0x3

    .line 97
    .local v13, "status":I
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 98
    .local v4, "symmetric":Z
    :goto_0
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 99
    .local v5, "capped":Z
    :goto_1
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v14, v6, v8

    .line 101
    .local v14, "downlinkSpeed":J
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    and-long v16, v2, v8

    .line 103
    .local v16, "uplinkSpeed":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v12, v2, 0xff

    .line 104
    .local v12, "downlinkLoad":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v11, v2, 0xff

    .line 105
    .local v11, "uplinkLoad":I
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    long-to-int v2, v2

    const v3, 0xffff

    and-int v18, v2, v3

    .line 106
    .local v18, "lmd":I
    new-instance v19, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    move-object/from16 v2, v19

    move v3, v13

    move-wide v6, v14

    move-wide/from16 v8, v16

    move v10, v12

    move/from16 v20, v11

    .end local v11    # "uplinkLoad":I
    .local v20, "uplinkLoad":I
    move/from16 v21, v12

    move/from16 v12, v18

    .end local v12    # "downlinkLoad":I
    .local v21, "downlinkLoad":I
    invoke-direct/range {v2 .. v12}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;-><init>(IZZJJIII)V

    return-object v19

    .line 92
    .end local v1    # "wanInfo":I
    .end local v4    # "symmetric":Z
    .end local v5    # "capped":Z
    .end local v13    # "status":I
    .end local v14    # "downlinkSpeed":J
    .end local v16    # "uplinkSpeed":J
    .end local v18    # "lmd":I
    .end local v20    # "uplinkLoad":I
    .end local v21    # "downlinkLoad":I
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected buffer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 145
    return v0

    .line 147
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 148
    return v2

    .line 150
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    .line 151
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    iget-boolean v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    iget-boolean v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    iget-wide v5, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    iget-wide v5, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDownlinkLoad()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    return v0
.end method

.method public getDownlinkSpeed()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    return-wide v0
.end method

.method public getLMD()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    return v0
.end method

.method public getUplinkLoad()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    return v0
.end method

.method public getUplinkSpeed()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 163
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isCapped()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    return v0
.end method

.method public isSymmetric()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 169
    const-string v0, "HSWanMetrics{mStatus=%s, mSymmetric=%s, mCapped=%s, mDlSpeed=%d, mUlSpeed=%d, mDlLoad=%f, mUlLoad=%f, mLMD=%d}"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v6

    .line 173
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 169
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
