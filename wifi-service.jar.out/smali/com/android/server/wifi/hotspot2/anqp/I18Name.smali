.class public Lcom/android/server/wifi/hotspot2/anqp/I18Name;
.super Ljava/lang/Object;
.source "I18Name.java"


# static fields
.field public static final LANGUAGE_CODE_LENGTH:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MINIMUM_LENGTH:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "text"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLanguage:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLocale:Ljava/util/Locale;

    .line 54
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mText:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 70
    .local v0, "length":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 75
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v1, v2}, Lcom/android/server/wifi/ByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 80
    .local v2, "locale":Ljava/util/Locale;
    add-int/lit8 v3, v0, -0x3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/ByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    return-object v4

    .line 71
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 103
    return v2

    .line 106
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    .line 107
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLanguage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLanguage:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mText:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mText:Ljava/lang/String;

    .line 108
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 114
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 115
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
