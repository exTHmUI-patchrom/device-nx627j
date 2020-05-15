.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveLogPacketIDsResponse"
.end annotation


# instance fields
.field public activePacketIdList:[I

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 2266
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->traceId:I

    .line 2264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->activePacketIdList:[I

    .line 2267
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->status:I

    .line 2269
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2271
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 2272
    .local v1, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 2273
    .local v2, "length":I
    const/4 v3, 0x0

    .line 2275
    .local v3, "packetIdLength":B
    packed-switch v1, :pswitch_data_0

    .line 2291
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2277
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 2278
    .local v4, "logPacketIdLength":S
    new-array v5, v4, [I

    .line 2279
    .local v5, "activeLogPacketIdListArray":[I
    move v6, v0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 2280
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v6

    .line 2279
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2282
    .end local v6    # "i":I
    :cond_0
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->activePacketIdList:[I

    .line 2283
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Active log packet Id\'s = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->activePacketIdList:[I

    .line 2284
    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2283
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    goto :goto_3

    .line 2287
    .end local v4    # "logPacketIdLength":S
    .end local v5    # "activeLogPacketIdListArray":[I
    :pswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->traceId:I

    .line 2288
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "traceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;->traceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    goto :goto_3

    .line 2291
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveLogPacketIDsResponse: Unexpected Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "type":I
    .end local v2    # "length":I
    .end local v3    # "packetIdLength":B
    goto :goto_3

    .line 2294
    :catch_0
    move-exception v1

    .line 2295
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid format of byte buffer received in ActiveLogPacketIDsResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    goto/16 :goto_0

    .line 2300
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
