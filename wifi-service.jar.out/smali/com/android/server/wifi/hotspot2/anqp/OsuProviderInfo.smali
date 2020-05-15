.class public Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;
.super Ljava/lang/Object;
.source "OsuProviderInfo.java"


# static fields
.field private static final MAXIMUM_I18N_STRING_LENGTH:I = 0xfc

.field public static final MINIMUM_LENGTH:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mFriendlyNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkAccessIdentifier:Ljava/lang/String;

.field private final mServerUri:Landroid/net/Uri;

.field private final mServiceDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2, "serverUri"    # Landroid/net/Uri;
    .param p5, "nai"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/IconInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "friendlyNames":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    .local p3, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    .local p6, "serviceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    .line 85
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    .line 86
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    .line 87
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    .line 89
    return-void
.end method

.method private static getI18String(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 291
    .local p0, "i18Strings":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    .line 292
    .local v1, "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    .end local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 297
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSubBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    .local v0, "subBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 278
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 279
    return-object v0

    .line 272
    .end local v0    # "subBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;
    .locals 23
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v3

    long-to-int v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    .line 104
    .local v1, "length":I
    const/16 v4, 0x9

    if-lt v1, v4, :cond_2

    .line 109
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 110
    invoke-static {v0, v4, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v4

    long-to-int v4, v4

    and-int/2addr v4, v3

    .line 111
    .local v4, "friendlyNameLength":I
    invoke-static {v0, v4}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getSubBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 112
    .local v5, "friendlyNameBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->parseI18Names(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v13

    .line 115
    .local v13, "friendlyNameList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 116
    invoke-static {v0, v6}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 119
    .local v14, "serverUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 120
    .local v6, "methodListLength":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v15, v6

    .end local v6    # "methodListLength":I
    .local v7, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "methodListLength":I
    :goto_0
    move-object v12, v7

    .line 121
    .end local v7    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-lez v15, :cond_0

    .line 122
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v15, v15, -0x1

    .line 120
    move-object v7, v12

    goto :goto_0

    .line 127
    :cond_0
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 128
    invoke-static {v0, v6, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v6

    long-to-int v6, v6

    and-int v11, v6, v3

    .line 129
    .local v11, "availableIconLength":I
    invoke-static {v0, v11}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getSubBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 130
    .local v10, "iconBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    :goto_1
    move-object v9, v6

    .line 131
    .end local v6    # "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    .local v9, "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    invoke-static {v10}, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/IconInfo;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    move-object v6, v9

    goto :goto_1

    .line 136
    :cond_1
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v6}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 139
    .local v16, "nai":Ljava/lang/String;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 140
    invoke-static {v0, v6, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v6

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 141
    .local v2, "serviceDescriptionLength":I
    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getSubBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 142
    .local v3, "descriptionsBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->parseI18Names(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v17

    .line 144
    .local v17, "serviceDescriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    new-instance v18, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;

    move-object/from16 v6, v18

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v19, v9

    move-object v9, v12

    .end local v9    # "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    .local v19, "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    move-object/from16 v20, v10

    move-object/from16 v10, v19

    .end local v10    # "iconBuffer":Ljava/nio/ByteBuffer;
    .local v20, "iconBuffer":Ljava/nio/ByteBuffer;
    move/from16 v21, v11

    move-object/from16 v11, v16

    .end local v11    # "availableIconLength":I
    .local v21, "availableIconLength":I
    move-object/from16 v22, v12

    move-object/from16 v12, v17

    .end local v12    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v6 .. v12}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;-><init>(Ljava/util/List;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v18

    .line 105
    .end local v2    # "serviceDescriptionLength":I
    .end local v3    # "descriptionsBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "friendlyNameLength":I
    .end local v5    # "friendlyNameBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "friendlyNameList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    .end local v14    # "serverUri":Landroid/net/Uri;
    .end local v15    # "methodListLength":I
    .end local v16    # "nai":Ljava/lang/String;
    .end local v17    # "serviceDescriptionList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    .end local v19    # "iconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/IconInfo;>;"
    .end local v20    # "iconBuffer":Ljava/nio/ByteBuffer;
    .end local v21    # "availableIconLength":I
    .end local v22    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid length value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseI18Names(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/I18Name;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    move-result-object v1

    .line 247
    .local v1, "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    .line 248
    .local v2, "textBytes":I
    const/16 v3, 0xfc

    if-gt v2, v3, :cond_0

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .end local v2    # "textBytes":I
    goto :goto_0

    .line 249
    .restart local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .restart local v2    # "textBytes":I
    :cond_0
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I18Name string exceeds the maximum allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v1    # "name":Lcom/android/server/wifi/hotspot2/anqp/I18Name;
    .end local v2    # "textBytes":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 197
    return v0

    .line 199
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 200
    return v2

    .line 202
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;

    .line 203
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    .line 204
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    .line 206
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    .line 208
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    .line 210
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mNetworkAccessIdentifier:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 211
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    .line 213
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    goto :goto_5

    .line 203
    :cond_7
    move v0, v2

    :goto_5
    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getI18String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIconInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/IconInfo;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAccessIdentifier()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mNetworkAccessIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUri()Landroid/net/Uri;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getServiceDescription()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->getI18String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 218
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mNetworkAccessIdentifier:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsuProviderInfo{mFriendlyNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mFriendlyNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mServerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMethodList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mMethodList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mIconInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkAccessIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceDescriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->mServiceDescriptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
