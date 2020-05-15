.class public Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VhtOperation"
.end annotation


# instance fields
.field public centerFreqIndex1:I

.field public centerFreqIndex2:I

.field public channelMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    .line 190
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex1:I

    .line 191
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex2:I

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 215
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    .line 219
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex1:I

    .line 220
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex2:I

    .line 221
    return-void

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element id is not VHT_OPERATION, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCenterFreq0()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex1:I

    add-int/lit8 v0, v0, -0x24

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x143c

    return v0
.end method

.method public getCenterFreq1()I
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 208
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex2:I

    add-int/lit8 v0, v0, -0x24

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x143c

    return v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
