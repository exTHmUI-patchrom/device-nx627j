.class public Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoamingConsortium"
.end annotation


# instance fields
.field public anqpOICount:I

.field private roamingConsortiums:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 11
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 270
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_4

    .line 274
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 275
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    .line 277
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 278
    .local v1, "oi12Length":I
    and-int/lit8 v2, v1, 0xf

    .line 279
    .local v2, "oi1Length":I
    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 280
    .local v3, "oi2Length":I
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 281
    .local v4, "oi3Length":I
    const/4 v6, 0x0

    .line 282
    .local v6, "oiCount":I
    if-lez v2, :cond_0

    .line 283
    add-int/lit8 v6, v6, 0x1

    .line 284
    if-lez v3, :cond_0

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 286
    if-lez v4, :cond_0

    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 291
    :cond_0
    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    .line 292
    if-lez v2, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    array-length v7, v7

    if-lez v7, :cond_1

    .line 293
    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    const/4 v8, 0x0

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 294
    invoke-static {v0, v9, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 296
    :cond_1
    if-lez v3, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 297
    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 298
    invoke-static {v0, v9, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 300
    :cond_2
    if-lez v4, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    array-length v7, v7

    if-le v7, v5, :cond_3

    .line 301
    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 302
    invoke-static {v0, v8, v4}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v8

    aput-wide v8, v7, v5

    .line 304
    :cond_3
    return-void

    .line 271
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "oi12Length":I
    .end local v2    # "oi1Length":I
    .end local v3    # "oi2Length":I
    .end local v4    # "oi3Length":I
    .end local v6    # "oiCount":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element id is not ROAMING_CONSORTIUM, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    return-object v0
.end method
