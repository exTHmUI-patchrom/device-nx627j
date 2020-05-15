.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mTypeSize:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 3
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I
    .param p3, "array"    # [B

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-lez p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 436
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    .line 437
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    .line 438
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    .line 439
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p3

    :goto_0
    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    .line 440
    return-void

    .line 433
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sizes - typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 413
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 413
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    return v0
.end method

.method static synthetic access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 413
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 413
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    return v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    .line 489
    .local v2, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    iget-object v3, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v5, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v6, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v2    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    goto :goto_0

    .line 492
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const/4 v1, 0x1

    .line 453
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    .line 454
    .local v3, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    if-nez v1, :cond_0

    .line 455
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    const/4 v1, 0x0

    .line 458
    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    if-eqz v4, :cond_1

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-nez v4, :cond_2

    .line 464
    const-string v4, "<null>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :cond_2
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 466
    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getByte()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 467
    :cond_3
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 468
    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getShort()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 469
    :cond_4
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 470
    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getInt()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 472
    :cond_5
    const-string v4, "<bytes>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :goto_1
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-eqz v4, :cond_6

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (S=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .end local v3    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    :cond_6
    goto/16 :goto_0

    .line 478
    :cond_7
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
