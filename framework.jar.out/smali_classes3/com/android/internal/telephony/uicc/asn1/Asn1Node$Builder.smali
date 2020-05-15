.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
.super Ljava/lang/Object;
.source "Asn1Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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

.field private final mTag:I


# direct methods
.method private constructor <init>(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mTag:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    .line 57
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Builder should be created for a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node$1;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 2
    .param p1, "child"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 1
    .param p1, "child"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object p0
.end method

.method public addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 5
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 158
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 164
    .local v0, "dataBytes":[B
    invoke-static {p2}, Ljava/lang/Integer;->reverse(I)I

    move-result p2

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "dataLength":I
    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "dataLength":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 167
    rsub-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x8

    shr-int v4, p2, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 168
    aget-byte v4, v0, v1

    if-eqz v4, :cond_0

    .line 169
    move v3, v1

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_1
    add-int/2addr v3, v2

    .line 174
    add-int/lit8 v1, v3, -0x1

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->countTrailingZeros(B)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 175
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 176
    return-object p0

    .line 159
    .end local v0    # "dataBytes":[B
    .end local v3    # "dataLength":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Z

    .line 186
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$100()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$200()[B

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 190
    return-object p0

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # [B

    .line 134
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 138
    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsBytesFromHex(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "hex"    # Ljava/lang/String;

    .line 148
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 103
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I)[B

    move-result-object v0

    .line 107
    .local v0, "dataBytes":[B
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 108
    return-object p0

    .line 104
    .end local v0    # "dataBytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 122
    .local v0, "dataBytes":[B
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 123
    return-object p0

    .line 119
    .end local v0    # "dataBytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set value of a constructed tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildren([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .locals 3
    .param p1, "encodedBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    .line 90
    .local v0, "subDecoder":Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    return-object p0
.end method

.method public build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 4

    .line 195
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mTag:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->mChildren:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(ILjava/util/List;Lcom/android/internal/telephony/uicc/asn1/Asn1Node$1;)V

    return-object v0
.end method
