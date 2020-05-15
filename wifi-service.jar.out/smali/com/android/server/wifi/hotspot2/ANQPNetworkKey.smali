.class public Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
.super Ljava/lang/Object;
.source "ANQPNetworkKey.java"


# instance fields
.field private final mAnqpDomainID:I

.field private final mBSSID:J

.field private final mHESSID:J

.field private final mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # J
    .param p4, "hessid"    # J
    .param p6, "anqpDomainID"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    .line 40
    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    .line 41
    iput p6, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    .line 42
    return-void
.end method

.method public static buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .locals 9
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "bssid"    # J
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I

    .line 60
    if-nez p5, :cond_0

    .line 61
    new-instance v7, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;-><init>(Ljava/lang/String;JJI)V

    return-object v7

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v8, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, v8

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;-><init>(Ljava/lang/String;JJI)V

    return-object v8

    .line 65
    :cond_1
    new-instance v8, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;-><init>(Ljava/lang/String;JJI)V

    return-object v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 82
    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 85
    return v2

    .line 87
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    .line 88
    .local v1, "that":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    iget-wide v5, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    iget-wide v5, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    iget v4, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 70
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x20

    const-wide/16 v4, 0x1f

    if-eqz v0, :cond_0

    .line 71
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    ushr-long v0, v2, v1

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 72
    :cond_0
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v2, v0

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    ushr-long v0, v6, v1

    add-long/2addr v2, v0

    mul-long/2addr v2, v4

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    add-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 96
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
