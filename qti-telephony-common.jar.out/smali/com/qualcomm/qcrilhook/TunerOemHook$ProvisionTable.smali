.class public Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;
.super Ljava/lang/Object;
.source "TunerOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/TunerOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisionTable"
.end annotation


# instance fields
.field public prv_tbl_oem:[I

.field public prv_tbl_rev:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_oem:[I

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_rev:I

    .line 221
    invoke-static {}, Lcom/qualcomm/qcrilhook/TunerOemHook;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvsionTableInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    .line 225
    .local v0, "type":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    .line 227
    .local v1, "length":I
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-static {}, Lcom/qualcomm/qcrilhook/TunerOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid TLV type"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "type":I
    .end local v1    # "length":I
    goto :goto_3

    .line 240
    .restart local v0    # "type":I
    .restart local v1    # "length":I
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 241
    .local v3, "prv_tbl_oem_len":B
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_oem:[I

    .line 242
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 243
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_oem:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    aput v5, v4, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lcom/qualcomm/qcrilhook/TunerOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provsions Table OEM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_oem:[I

    .line 246
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    goto :goto_3

    .line 229
    .end local v3    # "prv_tbl_oem_len":B
    :pswitch_1
    new-array v3, v1, [B

    .line 230
    .local v3, "data":[B
    nop

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_1

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 233
    .end local v2    # "i":I
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 234
    .local v2, "wrapped":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 235
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_rev:I

    .line 236
    invoke-static {}, Lcom/qualcomm/qcrilhook/TunerOemHook;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provision Table Rev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_rev:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    nop

    .line 252
    .end local v0    # "type":I
    .end local v1    # "length":I
    .end local v2    # "wrapped":Ljava/nio/ByteBuffer;
    .end local v3    # "data":[B
    :goto_3
    goto/16 :goto_0

    .line 253
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
