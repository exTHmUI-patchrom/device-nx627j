.class public Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;
.super Ljava/lang/Object;
.source "LegacyPasspointConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;,
        Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;,
        Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    }
.end annotation


# static fields
.field private static final END_OF_INTERNAL_NODE_INDICATOR:Ljava/lang/String; = "."

.field private static final LONG_ARRAY_SEPARATOR:Ljava/lang/String; = ","

.field private static final START_OF_INTERNAL_NODE_INDICATOR:C = '+'

.field private static final STRING_PREFIX_INDICATOR:C = ':'

.field private static final STRING_VALUE_INDICATOR:C = '='

.field private static final TAG:Ljava/lang/String; = "LegacyPasspointConfigParser"

.field private static final TAG_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field private static final TAG_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final TAG_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field private static final TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final TAG_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final TAG_REALM:Ljava/lang/String; = "Realm"

.field private static final TAG_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final TAG_SIM:Ljava/lang/String; = "SIM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNode(Ljava/io/BufferedReader;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .locals 6
    .param p0, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    move-object v1, v0

    .line 232
    .local v1, "currentLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    nop

    .line 239
    :cond_1
    if-nez v1, :cond_2

    .line 240
    return-object v0

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v2, "."

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    return-object v0

    .line 254
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseLine([B)Landroid/util/Pair;

    move-result-object v2

    .line 256
    .local v2, "nameValuePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 257
    new-instance v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 261
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;>;"
    nop

    .line 263
    .local v0, "child":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :goto_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->buildNode(Ljava/io/BufferedReader;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_5

    .line 264
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_5
    new-instance v4, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method private static getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to retreive value from non-leaf node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLine([B)Landroid/util/Pair;
    .locals 7
    .param p0, "lineBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseString([BI)Landroid/util/Pair;

    move-result-object v0

    .line 411
    .local v0, "nameIndexPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 413
    .local v1, "currentIndex":I
    :try_start_0
    aget-byte v2, p0, v1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 414
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 417
    :cond_0
    aget-byte v2, p0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    .line 424
    nop

    .line 425
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseString([BI)Landroid/util/Pair;

    move-result-object v2

    .line 426
    .local v2, "valueIndexPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 418
    .end local v2    # "valueIndexPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid line - missing both node and value indicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseLongArray(Ljava/lang/String;)[J
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "strArray":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [J

    .line 488
    .local v1, "longArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 490
    :try_start_0
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    nop

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid long integer value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 495
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v1
.end method

.method private static parseString([BI)Landroid/util/Pair;
    .locals 6
    .param p0, "lineBytes"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    const/4 v0, -0x1

    .line 447
    .local v0, "prefixIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 448
    aget-byte v2, p0, v1

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 449
    move v0, v1

    .line 450
    goto :goto_1

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 459
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sub-int v2, v0, p1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 461
    .local v1, "lengthStr":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 462
    .local v2, "length":I
    add-int/lit8 v3, v0, 0x1

    .line 465
    .local v3, "strStartIndex":I
    add-int v4, v3, v2

    array-length v5, p0

    if-le v4, v5, :cond_2

    .line 466
    array-length v4, p0

    sub-int v2, v4, v3

    .line 468
    :cond_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int v5, v3, v2

    .line 470
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 468
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 471
    .end local v1    # "lengthStr":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "strStartIndex":I
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid line - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid line - missing string prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static processCredentialNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V
    .locals 6
    .param p0, "credentialNode"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .param p1, "config"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    .line 359
    .local v1, "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x140b7

    if-eq v4, v5, :cond_1

    const v5, 0x4b2ea6f

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "Realm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 367
    const-string v2, "LegacyPasspointConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore uninterested field under Credential: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    goto :goto_2

    .line 364
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :pswitch_0
    invoke-static {v1, p1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processSimNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V

    .line 365
    goto :goto_2

    .line 361
    :pswitch_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    .line 362
    nop

    .line 370
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :goto_2
    goto :goto_0

    .line 371
    :cond_3
    return-void

    .line 355
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Credential node should contain at least one child node"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processHomeSPNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V
    .locals 6
    .param p0, "homeSpNode"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .param p1, "config"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 326
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    .line 327
    .local v1, "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x210a95

    if-eq v4, v5, :cond_2

    const v5, 0x205d7ed4

    if-eq v4, v5, :cond_1

    const v5, 0x2553ddf6

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "FriendlyName"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "RoamingConsortiumOI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "FQDN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 338
    const-string v2, "LegacyPasspointConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore uninterested field under HomeSP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    goto :goto_2

    .line 335
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :pswitch_0
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    .line 336
    goto :goto_2

    .line 332
    :pswitch_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    .line 333
    goto :goto_2

    .line 329
    :pswitch_2
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    .line 330
    nop

    .line 341
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :goto_2
    goto :goto_0

    .line 342
    :cond_4
    return-void

    .line 323
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HomeSP node should contain at least one child node"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processPpsNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    .locals 10
    .param p0, "ppsNode"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 282
    const-string v0, "PerProviderSubscription"

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    .line 288
    .local v0, "instanceNode":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 293
    new-instance v3, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    invoke-direct {v3}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;-><init>()V

    .line 294
    .local v3, "config":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    .line 295
    .local v5, "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x7ed3d064

    if-eq v8, v9, :cond_1

    const v9, 0x4e15c477    # 6.2817018E8f

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "Credential"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v1

    goto :goto_1

    :cond_1
    const-string v8, "HomeSP"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v2

    :cond_2
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 303
    const-string v6, "LegacyPasspointConfigParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore uninterested field under PPS instance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    goto :goto_2

    .line 300
    .restart local v5    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :pswitch_0
    invoke-static {v5, v3}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processCredentialNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V

    .line 301
    goto :goto_2

    .line 297
    :pswitch_1
    invoke-static {v5, v3}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processHomeSPNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V

    .line 298
    nop

    .line 306
    .end local v5    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :goto_2
    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, v3, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 310
    return-object v3

    .line 308
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PPS instance missing FQDN"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    .end local v3    # "config":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PPS instance node doesn\'t contained any children"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    .end local v0    # "instanceNode":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected name for PPS node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PerProviderSubscription node should contain one instance node"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processSimNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V
    .locals 6
    .param p0, "simNode"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .param p1, "config"    # Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    .line 387
    .local v1, "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x225a7a

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "IMSI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 392
    const-string v2, "LegacyPasspointConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore uninterested field under SIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    goto :goto_2

    .line 389
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :cond_2
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    .line 390
    nop

    .line 395
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    :goto_2
    goto :goto_0

    .line 396
    :cond_3
    return-void

    .line 383
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SIM node should contain at least one child node"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;>;"
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 197
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 200
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->buildNode(Ljava/io/BufferedReader;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    move-result-object v2

    .line 202
    .local v2, "root":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    const-string v3, "MgmtTree"

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 214
    .local v3, "ppsNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    .line 215
    .local v5, "ppsNode":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processPpsNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    move-result-object v6

    .line 216
    .local v6, "config":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    iget-object v7, v6, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .end local v5    # "ppsNode":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .end local v6    # "config":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    goto :goto_0

    .line 218
    :cond_1
    return-object v0

    .line 209
    .end local v3    # "ppsNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;>;"
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected root node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_3
    :goto_1
    const-string v3, "LegacyPasspointConfigParser"

    const-string v4, "Empty configuration data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-object v0
.end method
