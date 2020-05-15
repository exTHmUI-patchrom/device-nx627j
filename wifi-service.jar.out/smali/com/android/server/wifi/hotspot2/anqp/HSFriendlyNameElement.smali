.class public Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "HSFriendlyNameElement.java"


# static fields
.field public static final MAXIMUM_OPERATOR_NAME_LENGTH:I = 0xfc
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 39
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->mNames:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    move-result-object v1

    .line 57
    .local v1, "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    .line 58
    .local v2, "textBytes":I
    const/16 v3, 0xfc

    if-gt v2, v3, :cond_0

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .end local v2    # "textBytes":I
    goto :goto_0

    .line 59
    .restart local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .restart local v2    # "textBytes":I
    :cond_0
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operator Name exceeds the maximum allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    .end local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .end local v2    # "textBytes":I
    :cond_1
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 73
    if-ne p0, p1, :cond_0

    .line 74
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    .line 80
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->mNames:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->mNames:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->mNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->mNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSFriendlyName{mNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->mNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
