.class public Lcom/android/server/wifi/hotspot2/IconEvent;
.super Ljava/lang/Object;
.source "IconEvent.java"


# instance fields
.field private final mBSSID:J

.field private final mData:[B

.field private final mFileName:Ljava/lang/String;

.field private final mSize:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I[B)V
    .locals 0
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "size"    # I
    .param p5, "data"    # [B

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mBSSID:J

    .line 11
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mFileName:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mSize:I

    .line 13
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mData:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getBSSID()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mBSSID:J

    return-wide v0
.end method

.method public getData()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mData:[B

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconEvent: BSSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%012x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mBSSID:J

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/IconEvent;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method
