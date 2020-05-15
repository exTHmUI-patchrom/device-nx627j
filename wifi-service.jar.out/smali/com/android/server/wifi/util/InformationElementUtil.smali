.class public Lcom/android/server/wifi/util/InformationElementUtil;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;,
        Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;,
        Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;,
        Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$Vsa;,
        Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;,
        Lcom/android/server/wifi/util/InformationElementUtil$Interworking;,
        Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InformationElementUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    .locals 8
    .param p0, "ies"    # [Landroid/net/wifi/ScanResult$InformationElement;

    .line 96
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;-><init>()V

    .line 97
    .local v0, "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    if-eqz p0, :cond_1

    .line 98
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 99
    .local v3, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v4, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v5, 0xdd

    if-ne v4, v5, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_1

    .line 102
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "InformationElementUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse Vendor Specific IE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-object v0
.end method

.method public static getInterworkingIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    .locals 8
    .param p0, "ies"    # [Landroid/net/wifi/ScanResult$InformationElement;

    .line 118
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;-><init>()V

    .line 119
    .local v0, "interworking":Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    if-eqz p0, :cond_1

    .line 120
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 121
    .local v3, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v4, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v5, 0x6b

    if-ne v4, v5, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_1

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "InformationElementUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse Interworking IE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-object v0
.end method

.method public static getRoamingConsortiumIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    .locals 8
    .param p0, "ies"    # [Landroid/net/wifi/ScanResult$InformationElement;

    .line 74
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;-><init>()V

    .line 75
    .local v0, "roamingConsortium":Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    if-eqz p0, :cond_1

    .line 76
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 77
    .local v3, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v4, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_1

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "InformationElementUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse Roaming Consortium IE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-object v0
.end method

.method public static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 7
    .param p0, "bytes"    # [B

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 37
    new-array v0, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v0

    .line 39
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 41
    .local v1, "data":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult$InformationElement;>;"
    nop

    .line 43
    .local v0, "found_ssid":Z
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 45
    .local v3, "eid":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 47
    .local v4, "elementLength":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v4, v5, :cond_3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 52
    goto :goto_1

    .line 54
    :cond_1
    if-nez v3, :cond_2

    .line 55
    const/4 v0, 0x1

    .line 58
    :cond_2
    new-instance v5, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v5}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 59
    .local v5, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iput v3, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 60
    new-array v6, v4, [B

    iput-object v6, v5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 61
    iget-object v6, v5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v3    # "eid":I
    .end local v4    # "elementLength":I
    .end local v5    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v3
.end method
