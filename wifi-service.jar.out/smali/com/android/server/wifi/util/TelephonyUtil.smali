.class public Lcom/android/server/wifi/util/TelephonyUtil;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;,
        Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;
    }
.end annotation


# static fields
.field public static final DEFAULT_EAP_PREFIX:Ljava/lang/String; = "\u0000"

.field private static final EAP_METHOD_PREFIX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMSI_CIPHER_TRANSFORMATION:Ljava/lang/String; = "RSA/ECB/OAEPwithSHA-256andMGF1Padding"

.field public static final TAG:Ljava/lang/String; = "TelephonyUtil"

.field private static final THREE_GPP_NAI_REALM_FORMAT:Ljava/lang/String; = "wlan.mnc%s.mcc%s.3gppnetwork.org"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/TelephonyUtil;->EAP_METHOD_PREFIX:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/android/server/wifi/util/TelephonyUtil;->EAP_METHOD_PREFIX:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/server/wifi/util/TelephonyUtil;->EAP_METHOD_PREFIX:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/server/wifi/util/TelephonyUtil;->EAP_METHOD_PREFIX:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildEncryptedIdentity(Lcom/android/server/wifi/util/TelephonyUtil;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "telephonyUtil"    # Lcom/android/server/wifi/util/TelephonyUtil;
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;
    .param p4, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 139
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 140
    return-object v0

    .line 143
    :cond_0
    sget-object v1, Lcom/android/server/wifi/util/TelephonyUtil;->EAP_METHOD_PREFIX:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "prefix":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 145
    return-object v0

    .line 147
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 149
    nop

    .line 150
    invoke-virtual {p4}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 149
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/util/TelephonyUtil;->encryptDataUsingPublicKey(Ljava/security/PublicKey;[B)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "encryptedImsi":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 152
    const-string v3, "TelephonyUtil"

    const-string v4, "Failed to encrypt IMSI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0

    .line 155
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v2, p3, v0}, Lcom/android/server/wifi/util/TelephonyUtil;->buildIdentity(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "encryptedIdentity":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_3
    return-object v0
.end method

.method private static buildIdentity(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "eapMethod"    # I
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mccMnc"    # Ljava/lang/String;
    .param p3, "isEncrypted"    # Z

    .line 194
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 199
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "\u0000"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/wifi/util/TelephonyUtil;->EAP_METHOD_PREFIX:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_2

    .line 201
    return-object v0

    .line 207
    :cond_2
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 208
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "mcc":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 215
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "mcc":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 216
    .restart local v4    # "mcc":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3    # "mnc":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v5, "wlan.mnc%s.mcc%s.3gppnetwork.org"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "naiRealm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 195
    .end local v0    # "naiRealm":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "mcc":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v1, "TelephonyUtil"

    const-string v2, "No IMSI or IMSI is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v0
.end method

.method private static concatHex([B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 326
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 328
    .local v0, "len":I
    new-array v1, v0, [B

    .line 330
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 331
    .local v2, "index":I
    array-length v3, p0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 332
    array-length v3, p0

    move v5, v2

    move v2, v4

    .end local v2    # "index":I
    .local v5, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v6, p0, v2

    .line 333
    .local v6, "b":B
    aput-byte v6, v1, v5

    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 332
    .end local v6    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_0
    move v2, v5

    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 339
    array-length v3, p1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, p1, v4

    .line 340
    .local v5, "b":B
    aput-byte v5, v1, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 339
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 345
    :cond_2
    return-object v1
.end method

.method public static get3GAuthResponse(Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;Landroid/telephony/TelephonyManager;)Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;
    .locals 18
    .param p0, "requestData"    # Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    move-object/from16 v1, p0

    .line 446
    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 447
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 448
    .local v4, "rand":[B
    const/4 v5, 0x0

    .line 449
    .local v5, "authn":[B
    const-string v6, "UMTS-AUTH"

    .line 451
    .local v6, "resType":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    array-length v0, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_0

    .line 453
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/android/server/wifi/util/TelephonyUtil;->parseHex(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v0

    .line 454
    iget-object v0, v1, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/android/server/wifi/util/TelephonyUtil;->parseHex(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "TelephonyUtil"

    const-string v11, "malformed challenge"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    goto :goto_1

    .line 459
    :cond_0
    const-string v0, "TelephonyUtil"

    const-string v10, "malformed challenge"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_1
    const-string v0, ""

    .line 463
    .local v0, "tmResponse":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 464
    invoke-static {v4, v5}, Lcom/android/server/wifi/util/TelephonyUtil;->concatHex([B[B)[B

    move-result-object v10

    invoke-static {v10, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    .line 465
    .local v10, "base64Challenge":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 466
    const/16 v11, 0x81

    invoke-virtual {v2, v9, v11, v10}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    const-string v11, "TelephonyUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raw Response - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 470
    :cond_1
    const-string v11, "TelephonyUtil"

    const-string v12, "No valid TelephonyManager"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v10    # "base64Challenge":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .line 475
    .local v10, "goodReponse":Z
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_5

    .line 476
    invoke-static {v0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 477
    .local v11, "result":[B
    const-string v13, "TelephonyUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hex Response - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    aget-byte v8, v11, v8

    .line 479
    .local v8, "tag":B
    const/16 v13, -0x25

    if-ne v8, v13, :cond_3

    .line 480
    const-string v13, "TelephonyUtil"

    const-string v14, "successful 3G authentication "

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    aget-byte v7, v11, v7

    .line 482
    .local v7, "resLen":I
    invoke-static {v11, v9, v7}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([BII)Ljava/lang/String;

    move-result-object v9

    .line 483
    .local v9, "res":Ljava/lang/String;
    add-int/lit8 v13, v7, 0x2

    aget-byte v13, v11, v13

    .line 484
    .local v13, "ckLen":I
    add-int/lit8 v14, v7, 0x3

    invoke-static {v11, v14, v13}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([BII)Ljava/lang/String;

    move-result-object v14

    .line 485
    .local v14, "ck":Ljava/lang/String;
    add-int v15, v7, v13

    add-int/lit8 v15, v15, 0x3

    aget-byte v15, v11, v15

    .line 486
    .local v15, "ikLen":I
    add-int v16, v7, v13

    add-int/lit8 v12, v16, 0x4

    invoke-static {v11, v12, v15}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([BII)Ljava/lang/String;

    move-result-object v12

    .line 487
    .local v12, "ik":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, "TelephonyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "ik:"

    .end local v4    # "rand":[B
    .local v17, "rand":[B
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ck:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " res:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x1

    .line 490
    .end local v7    # "resLen":I
    .end local v9    # "res":Ljava/lang/String;
    .end local v10    # "goodReponse":Z
    .end local v12    # "ik":Ljava/lang/String;
    .end local v13    # "ckLen":I
    .end local v14    # "ck":Ljava/lang/String;
    .end local v15    # "ikLen":I
    .local v1, "goodReponse":Z
    nop

    .line 501
    move v10, v1

    goto :goto_3

    .line 490
    .end local v1    # "goodReponse":Z
    .end local v17    # "rand":[B
    .restart local v4    # "rand":[B
    .restart local v10    # "goodReponse":Z
    :cond_3
    move-object/from16 v17, v4

    .end local v4    # "rand":[B
    .restart local v17    # "rand":[B
    const/16 v1, -0x24

    if-ne v8, v1, :cond_4

    .line 491
    const-string v1, "TelephonyUtil"

    const-string v2, "synchronisation failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    aget-byte v1, v11, v7

    .line 493
    .local v1, "autsLen":I
    invoke-static {v11, v9, v1}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([BII)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "auts":Ljava/lang/String;
    const-string v4, "UMTS-AUTS"

    .line 495
    .end local v6    # "resType":Ljava/lang/String;
    .local v4, "resType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v6, "TelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "auts:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x1

    .line 498
    .end local v2    # "auts":Ljava/lang/String;
    .end local v10    # "goodReponse":Z
    .local v1, "goodReponse":Z
    nop

    .line 501
    move v10, v1

    move-object v6, v4

    goto :goto_3

    .line 499
    .end local v1    # "goodReponse":Z
    .end local v4    # "resType":Ljava/lang/String;
    .restart local v6    # "resType":Ljava/lang/String;
    .restart local v10    # "goodReponse":Z
    :cond_4
    const-string v1, "TelephonyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad response - unknown tag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v8    # "tag":B
    .end local v11    # "result":[B
    :goto_3
    goto :goto_4

    .line 502
    .end local v17    # "rand":[B
    .local v4, "rand":[B
    :cond_5
    move-object/from16 v17, v4

    .end local v4    # "rand":[B
    .restart local v17    # "rand":[B
    const-string v1, "TelephonyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad response - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_4
    if-eqz v10, :cond_6

    .line 506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "response":Ljava/lang/String;
    const-string v2, "TelephonyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supplicant Response -"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v2, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;

    invoke-direct {v2, v6, v1}, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 510
    .end local v1    # "response":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 18
    .param p0, "requestData"    # [Ljava/lang/String;
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    move-object/from16 v1, p0

    .line 349
    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 350
    const-string v0, "TelephonyUtil"

    const-string v4, "No valid TelephonyManager"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v3

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 354
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_9

    aget-object v8, v1, v7

    .line 355
    .local v8, "challenge":Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    goto/16 :goto_2

    .line 358
    :cond_1
    const-string v0, "TelephonyUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RAND = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object v9, v3

    .line 362
    .local v9, "rand":[B
    :try_start_0
    invoke-static {v8}, Lcom/android/server/wifi/util/TelephonyUtil;->parseHex(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v9    # "rand":[B
    .local v0, "rand":[B
    nop

    .line 368
    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, "base64Challenge":Ljava/lang/String;
    const/16 v11, 0x80

    invoke-virtual {v2, v9, v11, v10}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, "tmResponse":Ljava/lang/String;
    const/4 v12, 0x1

    if-nez v9, :cond_2

    .line 375
    invoke-virtual {v2, v12, v11, v10}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    :cond_2
    const-string v11, "TelephonyUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raw Response - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x4

    if-gt v11, v13, :cond_3

    .line 381
    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 385
    :cond_3
    invoke-static {v9, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 386
    .local v11, "result":[B
    const-string v13, "TelephonyUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hex Response -"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    aget-byte v13, v11, v6

    .line 388
    .local v13, "sresLen":I
    array-length v14, v11

    if-lt v13, v14, :cond_4

    .line 389
    const-string v5, "TelephonyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malfomed response - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v3

    .line 392
    :cond_4
    invoke-static {v11, v12, v13}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([BII)Ljava/lang/String;

    move-result-object v14

    .line 393
    .local v14, "sres":Ljava/lang/String;
    add-int v15, v12, v13

    .line 394
    .local v15, "kcOffset":I
    array-length v6, v11

    if-lt v15, v6, :cond_5

    .line 395
    const-string v5, "TelephonyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malfomed response - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v3

    .line 398
    :cond_5
    aget-byte v6, v11, v15

    .line 399
    .local v6, "kcLen":I
    add-int v12, v15, v6

    array-length v3, v11

    if-le v12, v3, :cond_6

    .line 400
    const-string v3, "TelephonyUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malfomed response - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v3, 0x0

    return-object v3

    .line 403
    :cond_6
    const/4 v3, 0x1

    add-int v12, v3, v15

    invoke-static {v11, v12, v6}, Lcom/android/server/wifi/util/TelephonyUtil;->makeHex([BII)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "kc":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, ":"

    .end local v0    # "rand":[B
    .local v16, "rand":[B
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v0, "TelephonyUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kc:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sres:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v3    # "kc":Ljava/lang/String;
    .end local v6    # "kcLen":I
    .end local v8    # "challenge":Ljava/lang/String;
    .end local v9    # "tmResponse":Ljava/lang/String;
    .end local v10    # "base64Challenge":Ljava/lang/String;
    .end local v11    # "result":[B
    .end local v13    # "sresLen":I
    .end local v14    # "sres":Ljava/lang/String;
    .end local v15    # "kcOffset":I
    .end local v16    # "rand":[B
    const/4 v1, 0x0

    goto :goto_3

    .line 381
    .restart local v0    # "rand":[B
    .restart local v8    # "challenge":Ljava/lang/String;
    .restart local v9    # "tmResponse":Ljava/lang/String;
    .restart local v10    # "base64Challenge":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "rand":[B
    .restart local v16    # "rand":[B
    :goto_1
    const-string v0, "TelephonyUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad response - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, 0x0

    return-object v1

    .line 363
    .end local v10    # "base64Challenge":Ljava/lang/String;
    .end local v16    # "rand":[B
    .local v9, "rand":[B
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v3, v0

    .line 364
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "TelephonyUtil"

    const-string v6, "malformed challenge"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    goto :goto_3

    .line 354
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "challenge":Ljava/lang/String;
    .end local v9    # "rand":[B
    :cond_8
    :goto_2
    move-object v1, v3

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object v3, v1

    move-object/from16 v1, p0

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 408
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimIdentity(Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/util/TelephonyUtil;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;
    .locals 7
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "telephonyUtil"    # Lcom/android/server/wifi/util/TelephonyUtil;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/android/server/wifi/util/TelephonyUtil;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 73
    const-string v1, "TelephonyUtil"

    const-string v2, "No valid TelephonyManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "imsi":Ljava/lang/String;
    const-string v2, ""

    .line 79
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v3, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    nop

    .line 88
    nop

    .line 91
    invoke-static {p2}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimMethodForConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wifi/util/TelephonyUtil;->buildIdentity(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "identity":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 93
    const-string v5, "TelephonyUtil"

    const-string v6, "Failed to build the identity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v0

    .line 97
    :cond_2
    nop

    .line 98
    invoke-static {p2}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimMethodForConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 97
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/wifi/util/TelephonyUtil;->buildEncryptedIdentity(Lcom/android/server/wifi/util/TelephonyUtil;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "encryptedIdentity":Ljava/lang/String;
    if-nez v0, :cond_3

    const-string v0, ""

    .line 101
    :cond_3
    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 86
    .end local v0    # "encryptedIdentity":Ljava/lang/String;
    .end local v3    # "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    .end local v4    # "identity":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "TelephonyUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get imsi encryption info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v0
.end method

.method private static getSimMethodForConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 230
    const/4 v0, -0x1

    if-eqz p0, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v1, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 234
    .local v1, "eapMethod":I
    if-nez v1, :cond_1

    .line 236
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    const/4 v1, 0x6

    goto :goto_0

    .line 241
    :pswitch_1
    const/4 v1, 0x5

    .line 242
    goto :goto_0

    .line 238
    :pswitch_2
    const/4 v1, 0x4

    .line 239
    nop

    .line 249
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 231
    .end local v1    # "eapMethod":I
    :cond_3
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 259
    invoke-static {p0}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimMethodForConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSimEapMethod(I)Z
    .locals 1
    .param p0, "eapMethod"    # I

    .line 269
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static makeHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 311
    .local v4, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static makeHex([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "from"    # I
    .param p2, "len"    # I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 319
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int v5, p1, v2

    aget-byte v5, p0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseHex(C)I
    .locals 3
    .param p0, "ch"    # C

    .line 276
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 277
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 278
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 279
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 280
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 281
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 283
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid hex digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseHex(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 290
    new-array v0, v0, [B

    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 298
    .local v1, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/server/wifi/util/TelephonyUtil;->parseHex(C)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/util/TelephonyUtil;->parseHex(C)I

    move-result v4

    add-int/2addr v3, v4

    .line 301
    .local v3, "val":I
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    .line 302
    .local v4, "b":B
    aput-byte v4, v1, v2

    .line 299
    .end local v3    # "val":I
    .end local v4    # "b":B
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_1
    return-object v1

    .line 294
    .end local v1    # "result":[B
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid hex string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encryptDataUsingPublicKey(Ljava/security/PublicKey;[B)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "data"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    :try_start_0
    const-string v0, "RSA/ECB/OAEPwithSHA-256andMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 115
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 116
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 117
    .local v1, "encryptedBytes":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 118
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "encryptedBytes":[B
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "TelephonyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encryption failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    return-object v1
.end method
