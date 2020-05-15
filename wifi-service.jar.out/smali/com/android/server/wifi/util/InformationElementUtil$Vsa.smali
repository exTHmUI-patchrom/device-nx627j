.class public Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vsa"
.end annotation


# static fields
.field private static final ANQP_DOMID_BIT:I = 0x4


# instance fields
.field public anqpDomainID:I

.field public hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 314
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 315
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, 0x109a6f50

    if-ne v1, v2, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 317
    .local v1, "hsConf":I
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 325
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    goto :goto_0

    .line 322
    :pswitch_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 323
    goto :goto_0

    .line 319
    :pswitch_1
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 320
    nop

    .line 328
    :goto_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    .end local v1    # "hsConf":I
    goto :goto_1

    .line 330
    .restart local v1    # "hsConf":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HS20 indication element too short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    .end local v1    # "hsConf":I
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
