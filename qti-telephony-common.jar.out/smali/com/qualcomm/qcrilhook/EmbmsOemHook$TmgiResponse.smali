.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmgiResponse"
.end annotation


# instance fields
.field public code:I

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgi:[B

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 1977
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->code:I

    .line 1974
    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->traceId:I

    .line 1975
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->tmgi:[B

    .line 1978
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->status:I

    .line 1980
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1981
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 1982
    .local v1, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 1984
    .local v2, "length":I
    sparse-switch v1, :sswitch_data_0

    .line 2007
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TmgiResponse: Unexpected Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "type":I
    .end local v2    # "length":I
    goto/16 :goto_2

    .line 1986
    .restart local v1    # "type":I
    .restart local v2    # "length":I
    :sswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1987
    .local v3, "tmgiLength":B
    new-array v4, v3, [B

    .line 1988
    .local v4, "tmgi":[B
    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 1989
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v4, v5

    .line 1988
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1991
    .end local v5    # "i":I
    :cond_0
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->tmgi:[B

    .line 1992
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmgi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->tmgi:[B

    invoke-static {v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    goto :goto_2

    .line 1995
    .end local v3    # "tmgiLength":B
    .end local v4    # "tmgi":[B
    :sswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1996
    .local v3, "id":B
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    goto :goto_2

    .line 1999
    .end local v3    # "id":B
    :sswitch_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->code:I

    .line 2000
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    goto :goto_2

    .line 2003
    :sswitch_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->traceId:I

    .line 2004
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;->traceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    nop

    .line 2010
    .end local v1    # "type":I
    .end local v2    # "length":I
    :goto_2
    goto/16 :goto_0

    .line 2011
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method
