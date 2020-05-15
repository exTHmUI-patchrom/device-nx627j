.class public Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interworking"
.end annotation


# instance fields
.field public ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public hessid:J

.field public internet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 7
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 230
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_7

    .line 233
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 234
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 235
    .local v1, "anOptions":I
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 236
    and-int/lit8 v2, v1, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    .line 242
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x9

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v5, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v4, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-ne v2, v6, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Interworking element length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v5, :cond_3

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-ne v2, v6, :cond_4

    .line 251
    :cond_3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 254
    :cond_4
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v4, :cond_5

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-ne v2, v6, :cond_6

    .line 255
    :cond_5
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    .line 257
    :cond_6
    return-void

    .line 231
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "anOptions":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element id is not INTERWORKING, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
