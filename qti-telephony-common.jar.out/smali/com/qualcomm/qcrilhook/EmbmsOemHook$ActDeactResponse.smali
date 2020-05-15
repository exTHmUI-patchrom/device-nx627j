.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActDeactResponse"
.end annotation


# instance fields
.field public actCode:S

.field public actTmgi:[B

.field public deactCode:S

.field public deactTmgi:[B

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 2118
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2112
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actCode:S

    .line 2113
    iput-short v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactCode:S

    .line 2114
    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->traceId:I

    .line 2115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actTmgi:[B

    .line 2116
    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactTmgi:[B

    .line 2119
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->status:I

    .line 2121
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2122
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 2123
    .local v1, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 2124
    .local v2, "length":I
    const/4 v3, 0x0

    .line 2125
    .local v3, "tmgiLength":B
    const/4 v4, 0x0

    .line 2127
    .local v4, "tmgi":[B
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 2163
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TmgiResponse: Unexpected Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "type":I
    .end local v2    # "length":I
    .end local v3    # "tmgiLength":B
    .end local v4    # "tmgi":[B
    goto/16 :goto_3

    .line 2138
    .restart local v1    # "type":I
    .restart local v2    # "length":I
    .restart local v3    # "tmgiLength":B
    .restart local v4    # "tmgi":[B
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 2139
    new-array v4, v3, [B

    .line 2140
    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 2141
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v4, v5

    .line 2140
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2143
    .end local v5    # "i":I
    :cond_0
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactTmgi:[B

    .line 2144
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deact tmgi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactTmgi:[B

    invoke-static {v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    goto/16 :goto_3

    .line 2129
    :pswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 2130
    new-array v4, v3, [B

    .line 2131
    move v5, v0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v3, :cond_1

    .line 2132
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v4, v5

    .line 2131
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2134
    .end local v5    # "i":I
    :cond_1
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actTmgi:[B

    .line 2135
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Act tmgi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actTmgi:[B

    invoke-static {v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    goto/16 :goto_3

    .line 2147
    :pswitch_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 2148
    .local v5, "id":B
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    goto :goto_3

    .line 2155
    .end local v5    # "id":B
    :pswitch_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactCode:S

    .line 2156
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deact code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactCode:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    goto :goto_3

    .line 2151
    :pswitch_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actCode:S

    .line 2152
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Act code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actCode:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    goto :goto_3

    .line 2159
    :pswitch_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->traceId:I

    .line 2160
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "traceId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->traceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    nop

    .line 2166
    .end local v1    # "type":I
    .end local v2    # "length":I
    .end local v3    # "tmgiLength":B
    .end local v4    # "tmgi":[B
    :goto_3
    goto/16 :goto_0

    .line 2167
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
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
