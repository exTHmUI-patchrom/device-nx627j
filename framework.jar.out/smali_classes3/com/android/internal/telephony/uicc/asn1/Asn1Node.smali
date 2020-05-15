.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
.super Ljava/lang/Object;
.source "Asn1Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_NODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE_BYTES:[B

.field private static final INT_BYTES:I = 0x4

.field private static final TRUE_BYTES:[B


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstructed:Z

.field private mDataBytes:[B

.field private mDataLength:I

.field private mDataOffset:I

.field private mEncodedLength:I

.field private final mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    .line 39
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->TRUE_BYTES:[B

    .line 40
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->FALSE_BYTES:[B

    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    .line 262
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 265
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 266
    .local v1, "size":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 267
    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget v3, v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 270
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 271
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->calculateEncodedBytesNumForLength(I)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    .line 273
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Lcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node$1;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(ILjava/util/List;)V

    return-void
.end method

.method constructor <init>(I[BII)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 247
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->isConstructedTag(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    .line 248
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    .line 249
    iput p3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    .line 250
    iput p4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 251
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    .line 252
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 253
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 254
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->calculateEncodedBytesNumForLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    .line 256
    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->isConstructedTag(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 34
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->TRUE_BYTES:[B

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 34
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->FALSE_BYTES:[B

    return-object v0
.end method

.method private static calculateEncodedBytesNumForLength(I)I
    .locals 2
    .param p0, "length"    # I

    .line 233
    const/4 v0, 0x1

    .line 234
    .local v0, "len":I
    const/16 v1, 0x7f

    if-le p0, v1, :cond_0

    .line 235
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_0
    return v0
.end method

.method private static isConstructedTag(I)Z
    .locals 3
    .param p0, "tag"    # I

    .line 227
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v0

    .line 228
    .local v0, "tagBytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 2
    .param p0, "tag"    # I

    .line 222
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;-><init>(ILcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V

    return-object v0
.end method

.method private write([BI)I
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 575
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 577
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 578
    add-int/lit8 v0, p2, 0x1

    .local v0, "offset":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .end local p2    # "offset":I
    goto :goto_0

    .line 581
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    move-result v0

    .line 582
    .local v0, "lenLen":I
    add-int/lit8 v1, p2, -0x1

    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 583
    add-int/2addr v0, p2

    .line 586
    .end local p2    # "offset":I
    .local v0, "offset":I
    :goto_0
    iget-boolean p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-nez p2, :cond_2

    .line 587
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 588
    .local p2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 590
    .local v2, "child":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    move-result v0

    .line 588
    .end local v2    # "child":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "i":I
    .end local p2    # "size":I
    :cond_1
    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz p2, :cond_3

    .line 593
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {p2, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 594
    iget p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, p2

    .line 596
    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public asBits()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .local v0, "bits":I
    nop

    .line 484
    nop

    .line 486
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 487
    shl-int/lit8 v0, v0, 0x8

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverse(I)I

    move-result v1

    return v1

    .line 483
    .end local v0    # "bits":I
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 478
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 475
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 497
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_4

    .line 503
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 507
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 515
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 517
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 519
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse data bytes as boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 504
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse data bytes as boolean: length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 501
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 498
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 450
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    .line 456
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    new-array v0, v0, [B

    .line 458
    .local v0, "output":[B
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    nop

    .line 462
    return-object v0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v4, "Cannot parse data bytes."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 454
    .end local v0    # "output":[B
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asInteger()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asRawLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToRawLong([BII)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 418
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 436
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 8
    .param p1, "tag"    # I
    .param p2, "tags"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 307
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz v0, :cond_5

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "index":I
    move v1, v0

    move v0, p1

    move-object p1, p0

    .line 312
    .local v0, "tag":I
    .local v1, "index":I
    .local p1, "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :goto_0
    if-eqz p1, :cond_3

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 314
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 315
    .local v3, "size":I
    const/4 v4, 0x0

    .line 316
    .local v4, "foundChild":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 317
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 318
    .local v6, "child":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 319
    move-object v4, v6

    .line 320
    goto :goto_2

    .line 316
    .end local v6    # "child":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 323
    .end local v5    # "i":I
    :cond_1
    :goto_2
    move-object p1, v4

    .line 324
    array-length v5, p2

    if-lt v1, v5, :cond_2

    .line 325
    goto :goto_3

    .line 327
    :cond_2
    add-int/lit8 v5, v1, 0x1

    .local v5, "index":I
    aget v0, p2, v1

    .line 328
    .end local v1    # "index":I
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    .end local v3    # "size":I
    .end local v4    # "foundChild":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    nop

    .line 311
    move v1, v5

    goto :goto_0

    .line 329
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 332
    return-object p1

    .line 330
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;-><init>(I)V

    throw v2

    .line 308
    .end local v0    # "tag":I
    .end local v1    # "index":I
    .local p1, "tag":I
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;-><init>(I)V

    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 369
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_0

    .line 370
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    .line 375
    .local v0, "subDecoder":Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    .line 379
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    .line 381
    .end local v0    # "subDecoder":Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getChildren(I)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 342
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    sget-object v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v1

    .line 350
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 352
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 353
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 354
    .local v4, "child":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 355
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v4    # "child":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method public getDataLength()I
    .locals 1

    .line 530
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    return v0
.end method

.method public getEncodedLength()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    return v0
.end method

.method public getHeadAsHex()Ljava/lang/String;
    .locals 4

    .line 561
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "headHex":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v1

    .line 566
    .local v1, "lenBytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .end local v1    # "lenBytes":[B
    :goto_0
    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    return v0
.end method

.method public varargs hasChild(I[I)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "tags"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    nop

    .line 295
    const/4 v0, 0x1

    return v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public hasValue()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstructed()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    return v0
.end method

.method public toBytes()[B
    .locals 2

    .line 549
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    new-array v0, v0, [B

    .line 550
    .local v0, "dest":[B
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    .line 551
    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([BI)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 540
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    .line 545
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to write. Required bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
