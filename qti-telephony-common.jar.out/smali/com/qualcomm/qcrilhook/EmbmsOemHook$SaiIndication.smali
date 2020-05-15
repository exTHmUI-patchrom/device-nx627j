.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaiIndication"
.end annotation


# instance fields
.field public availableSaiList:[I

.field public campedSaiList:[I

.field public numSaiPerGroupList:[I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .line 1245
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    .line 1241
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1242
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1243
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    .line 1247
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1249
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1250
    .local v1, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1251
    .local v2, "length":S
    const/4 v3, 0x0

    .line 1254
    .local v3, "list":[I
    packed-switch v1, :pswitch_data_0

    .line 1289
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 1275
    :pswitch_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 1276
    .local v4, "availableLength":S
    new-array v5, v4, [I

    move-object v3, v5

    .line 1277
    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 1278
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v3, v5

    .line 1277
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1280
    .end local v5    # "i":I
    :cond_0
    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1281
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available SAI list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1282
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1281
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    goto/16 :goto_5

    .line 1265
    .end local v4    # "availableLength":S
    :pswitch_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1266
    .local v4, "listLength":B
    new-array v5, v4, [I

    move-object v3, v5

    .line 1267
    move v5, v0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 1268
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v3, v5

    .line 1267
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1270
    .end local v5    # "i":I
    :cond_1
    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1271
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of SAI per group list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1272
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1271
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    goto/16 :goto_5

    .line 1256
    .end local v4    # "listLength":B
    :pswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1257
    .restart local v4    # "listLength":B
    new-array v5, v4, [I

    move-object v3, v5

    .line 1258
    move v5, v0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v4, :cond_2

    .line 1259
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v3, v5

    .line 1258
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1261
    .end local v5    # "i":I
    :cond_2
    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    .line 1262
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camped list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    goto :goto_5

    .line 1285
    .end local v4    # "listLength":B
    :pswitch_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    .line 1286
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "traceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    goto :goto_5

    .line 1289
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SaiIndication: Unexpected Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "type":I
    .end local v2    # "length":S
    .end local v3    # "list":[I
    goto :goto_5

    .line 1292
    :catch_0
    move-exception v1

    .line 1293
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected buffer format when parsing for SaiIndication"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_5
    goto/16 :goto_0

    .line 1296
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
