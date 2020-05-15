.class Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 501
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 506
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$000(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .locals 10

    .line 511
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "type":I
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 517
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v1

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v0, v1, v4

    goto :goto_0

    .line 518
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 519
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v1

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 521
    :cond_1
    :goto_0
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "length":I
    iget-object v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 525
    iget-object v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v1, v2, v3

    goto :goto_1

    .line 526
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 527
    iget-object v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    .line 529
    :cond_3
    :goto_1
    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 531
    new-instance v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    const/4 v9, 0x0

    move-object v4, v2

    move v5, v0

    move v6, v1

    invoke-direct/range {v4 .. v9}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$1;)V

    .line 532
    .local v2, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 533
    return-object v2

    .line 512
    .end local v0    # "type":I
    .end local v1    # "length":I
    .end local v2    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 501
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
