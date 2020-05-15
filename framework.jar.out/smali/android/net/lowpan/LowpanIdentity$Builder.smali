.class public Landroid/net/lowpan/LowpanIdentity$Builder;
.super Ljava/lang/Object;
.source "LowpanIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final stringPrep:Landroid/icu/text/StringPrep;


# instance fields
.field final mIdentity:Landroid/net/lowpan/LowpanIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    nop

    .line 48
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/icu/text/StringPrep;->getInstance(I)Landroid/icu/text/StringPrep;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanIdentity$Builder;->stringPrep:Landroid/icu/text/StringPrep;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-void
.end method

.method private static escape([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 55
    .local v4, "b":B
    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    .line 56
    int-to-char v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 58
    :cond_0
    const-string v5, "\\0x%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .end local v4    # "b":B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanIdentity;
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 1
    .param p1, "x"    # I

    .line 124
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanIdentity;->access$702(Landroid/net/lowpan/LowpanIdentity;I)I

    .line 125
    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 1
    .param p1, "x"    # Landroid/net/lowpan/LowpanIdentity;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getRawName()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 67
    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getXpanid()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 68
    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getPanid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 69
    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getChannel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 70
    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 71
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    sget-object v1, Landroid/net/lowpan/LowpanIdentity$Builder;->stringPrep:Landroid/icu/text/StringPrep;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/icu/text/StringPrep;->prepare(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$002(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v1}, Landroid/net/lowpan/LowpanIdentity;->access$000(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$102(Landroid/net/lowpan/LowpanIdentity;[B)[B

    .line 79
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$202(Landroid/net/lowpan/LowpanIdentity;Z)Z
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "x":Landroid/icu/text/StringPrepParseException;
    invoke-static {}, Landroid/net/lowpan/LowpanIdentity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/text/StringPrepParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 84
    .end local v0    # "x":Landroid/icu/text/StringPrepParseException;
    :goto_0
    return-object p0
.end method

.method public setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 1
    .param p1, "x"    # I

    .line 114
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanIdentity;->access$502(Landroid/net/lowpan/LowpanIdentity;I)I

    .line 115
    return-object p0
.end method

.method public setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 4
    .param p1, "name"    # [B

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$102(Landroid/net/lowpan/LowpanIdentity;[B)[B

    .line 90
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$002(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/net/lowpan/LowpanIdentity$Builder;->stringPrep:Landroid/icu/text/StringPrep;

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v2}, Landroid/net/lowpan/LowpanIdentity;->access$000(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/icu/text/StringPrep;->prepare(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "nameCheck":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 93
    invoke-static {v2, v3}, Landroid/net/lowpan/LowpanIdentity;->access$202(Landroid/net/lowpan/LowpanIdentity;Z)Z
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "nameCheck":Ljava/lang/String;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "x":Landroid/icu/text/StringPrepParseException;
    invoke-static {}, Landroid/net/lowpan/LowpanIdentity;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/text/StringPrepParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v2, v0}, Landroid/net/lowpan/LowpanIdentity;->access$202(Landroid/net/lowpan/LowpanIdentity;Z)Z

    .line 101
    .end local v1    # "x":Landroid/icu/text/StringPrepParseException;
    :goto_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0}, Landroid/net/lowpan/LowpanIdentity;->access$200(Landroid/net/lowpan/LowpanIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u00ab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->escape([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$002(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    :cond_0
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanIdentity;->access$602(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;
    .locals 2
    .param p1, "x"    # [B

    .line 109
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->access$402(Landroid/net/lowpan/LowpanIdentity;[B)[B

    .line 110
    return-object p0
.end method
