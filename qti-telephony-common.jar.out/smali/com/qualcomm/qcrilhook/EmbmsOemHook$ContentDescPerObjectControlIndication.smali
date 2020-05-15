.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentDescPerObjectControlIndication"
.end annotation


# instance fields
.field public perObjectContentControl:I

.field public perObjectStatusControl:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgi:[B

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .line 1423
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->traceId:I

    .line 1419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->tmgi:[B

    .line 1425
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1427
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 1428
    .local v1, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 1430
    .local v2, "length":I
    sparse-switch v1, :sswitch_data_0

    .line 1453
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1445
    :sswitch_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->perObjectStatusControl:I

    .line 1446
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perObjectStatusControl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->perObjectStatusControl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    goto/16 :goto_3

    .line 1441
    :sswitch_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->perObjectContentControl:I

    .line 1442
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perObjectContentControl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->perObjectContentControl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    goto/16 :goto_3

    .line 1432
    :sswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1433
    .local v3, "tmgiLength":B
    new-array v4, v3, [B

    .line 1434
    .local v4, "tmgi":[B
    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 1435
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v4, v5

    .line 1434
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1437
    .end local v5    # "i":I
    :cond_0
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->tmgi:[B

    .line 1438
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmgi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->tmgi:[B

    invoke-static {v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    goto :goto_3

    .line 1449
    .end local v3    # "tmgiLength":B
    .end local v4    # "tmgi":[B
    :sswitch_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->traceId:I

    .line 1450
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;->traceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    goto :goto_3

    .line 1453
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentDescPerObjectControl: Unexpected Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "type":I
    .end local v2    # "length":I
    goto :goto_3

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected buffer format when parsing forContentDescPerObjectControl Notification"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    goto/16 :goto_0

    .line 1461
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method
