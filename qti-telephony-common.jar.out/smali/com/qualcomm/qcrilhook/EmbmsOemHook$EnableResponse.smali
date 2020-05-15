.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnableResponse"
.end annotation


# instance fields
.field public callId:B

.field public code:I

.field public ifIndex:I

.field public interfaceName:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "error"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 1509
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1503
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->code:I

    .line 1505
    iput-byte v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->callId:B

    .line 1506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->interfaceName:Ljava/lang/String;

    .line 1507
    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->ifIndex:I

    .line 1510
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->status:I

    .line 1513
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1514
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 1515
    .local v1, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 1517
    .local v2, "length":I
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1543
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnableResponse: Unexpected Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "type":I
    .end local v2    # "length":I
    goto/16 :goto_2

    .line 1531
    .restart local v1    # "type":I
    .restart local v2    # "length":I
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->ifIndex:I

    .line 1532
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ifIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->ifIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    goto/16 :goto_2

    .line 1523
    :pswitch_1
    new-array v3, v2, [B

    .line 1524
    .local v3, "name":[B
    move v4, v0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 1525
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v3, v4

    .line 1524
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1527
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v4, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->interfaceName:Ljava/lang/String;

    .line 1528
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ifName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->interfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    goto :goto_2

    .line 1519
    .end local v3    # "name":[B
    :pswitch_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->callId:B

    .line 1520
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->callId:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    goto :goto_2

    .line 1535
    :pswitch_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->code:I

    .line 1536
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    goto :goto_2

    .line 1539
    :pswitch_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->traceId:I

    .line 1540
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;->traceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    nop

    .line 1546
    .end local v1    # "type":I
    .end local v2    # "length":I
    :goto_2
    goto/16 :goto_0

    .line 1547
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
