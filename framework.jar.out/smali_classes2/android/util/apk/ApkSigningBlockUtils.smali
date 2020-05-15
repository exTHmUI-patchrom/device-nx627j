.class final Landroid/util/apk/ApkSigningBlockUtils;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;
    }
.end annotation


# static fields
.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHUNK_SIZE_BYTES:I = 0x100000

.field static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field static final CONTENT_DIGEST_VERITY_CHUNKED_SHA256:I = 0x3

.field static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102

.field static final SIGNATURE_VERITY_DSA_WITH_SHA256:I = 0x425

.field static final SIGNATURE_VERITY_ECDSA_WITH_SHA256:I = 0x423

.field static final SIGNATURE_VERITY_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x421


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 776
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 779
    return-void

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compareContentDigestAlgorithm(II)I
    .locals 3
    .param p0, "digestAlgorithm1"    # I
    .param p1, "digestAlgorithm2"    # I

    .line 433
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :pswitch_1
    return v2

    .line 459
    :pswitch_2
    return v1

    .line 463
    :pswitch_3
    return v0

    .line 446
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :pswitch_5
    return v2

    .line 449
    :pswitch_6
    return v0

    .line 435
    :pswitch_7
    packed-switch p1, :pswitch_data_3

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_8
    return v1

    .line 437
    :pswitch_9
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static compareSignatureAlgorithm(II)I
    .locals 3
    .param p0, "sigAlgorithm1"    # I
    .param p1, "sigAlgorithm2"    # I

    .line 427
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v0

    .line 428
    .local v0, "digestAlgorithm1":I
    invoke-static {p1}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    .line 429
    .local v1, "digestAlgorithm2":I
    invoke-static {v0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->compareContentDigestAlgorithm(II)I

    move-result v2

    return v2
.end method

.method private static computeContentDigestsPer1MbChunk([I[Landroid/util/apk/DataSource;)[[B
    .locals 36
    .param p0, "digestAlgorithms"    # [I
    .param p1, "contents"    # [Landroid/util/apk/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 196
    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 197
    .local v3, "totalChunkCountLong":J
    array-length v0, v2

    const/4 v5, 0x0

    move-wide v6, v3

    move v3, v5

    .end local v3    # "totalChunkCountLong":J
    .local v6, "totalChunkCountLong":J
    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v2, v3

    .line 198
    .local v4, "input":Landroid/util/apk/DataSource;
    invoke-interface {v4}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/util/apk/ApkSigningBlockUtils;->getChunkCount(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 197
    .end local v4    # "input":Landroid/util/apk/DataSource;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const-wide/32 v3, 0x1fffff

    cmp-long v0, v6, v3

    if-gez v0, :cond_9

    .line 203
    long-to-int v3, v6

    .line 205
    .local v3, "totalChunkCount":I
    array-length v0, v1

    new-array v4, v0, [[B

    .line 206
    .local v4, "digestsOfChunks":[[B
    move v0, v5

    .local v0, "i":I
    :goto_1
    array-length v8, v1

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v0, v8, :cond_1

    .line 207
    aget v8, v1, v0

    .line 208
    .local v8, "digestAlgorithm":I
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v11

    .line 209
    .local v11, "digestOutputSizeBytes":I
    mul-int v12, v3, v11

    add-int/2addr v9, v12

    new-array v9, v9, [B

    .line 211
    .local v9, "concatenationOfChunkCountAndChunkDigests":[B
    const/16 v12, 0x5a

    aput-byte v12, v9, v5

    .line 212
    invoke-static {v3, v9, v10}, Landroid/util/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    .line 216
    aput-object v9, v4, v0

    .line 206
    .end local v8    # "digestAlgorithm":I
    .end local v9    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v11    # "digestOutputSizeBytes":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    :cond_1
    new-array v8, v9, [B

    .line 220
    .local v8, "chunkContentPrefix":[B
    const/16 v0, -0x5b

    aput-byte v0, v8, v5

    .line 221
    const/4 v11, 0x0

    .line 222
    .local v11, "chunkIndex":I
    array-length v0, v1

    new-array v12, v0, [Ljava/security/MessageDigest;

    .line 223
    .local v12, "mds":[Ljava/security/MessageDigest;
    move v0, v5

    .restart local v0    # "i":I
    :goto_2
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    array-length v0, v1

    if-ge v13, v0, :cond_2

    .line 224
    aget v0, v1, v13

    .line 225
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 227
    .local v14, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    aput-object v0, v12, v13
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    nop

    .line 223
    .end local v14    # "jcaAlgorithmName":Ljava/lang/String;
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 228
    .end local v0    # "i":I
    .restart local v13    # "i":I
    .restart local v14    # "jcaAlgorithmName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " digest not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 235
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "i":I
    .end local v14    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;

    invoke-direct {v0, v12}, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;-><init>([Ljava/security/MessageDigest;)V

    move-object v13, v0

    .line 236
    .local v13, "digester":Landroid/util/apk/DataDigester;
    const/4 v0, 0x0

    .line 237
    .local v0, "dataSourceIndex":I
    array-length v14, v2

    move v15, v0

    move v0, v5

    .end local v0    # "dataSourceIndex":I
    .local v15, "dataSourceIndex":I
    :goto_3
    if-ge v0, v14, :cond_7

    aget-object v5, v2, v0

    .line 238
    .local v5, "input":Landroid/util/apk/DataSource;
    const-wide/16 v17, 0x0

    .line 239
    .local v17, "inputOffset":J
    invoke-interface {v5}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v19

    move-wide/from16 v21, v17

    .end local v17    # "inputOffset":J
    .local v19, "inputRemaining":J
    .local v21, "inputOffset":J
    :goto_4
    move-wide/from16 v23, v19

    .line 240
    .end local v19    # "inputRemaining":J
    .local v23, "inputRemaining":J
    const-wide/16 v17, 0x0

    move-wide/from16 v9, v23

    cmp-long v17, v9, v17

    .end local v23    # "inputRemaining":J
    .local v9, "inputRemaining":J
    if-lez v17, :cond_6

    .line 241
    move/from16 v25, v3

    const-wide/32 v2, 0x100000

    .end local v3    # "totalChunkCount":I
    .local v25, "totalChunkCount":I
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 242
    .local v2, "chunkSize":I
    const/4 v3, 0x1

    invoke-static {v2, v8, v3}, Landroid/util/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    .line 243
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move/from16 v26, v17

    .end local v17    # "i":I
    .local v26, "i":I
    array-length v3, v12

    move/from16 v27, v14

    move/from16 v14, v26

    if-ge v14, v3, :cond_3

    .line 244
    .end local v26    # "i":I
    .local v14, "i":I
    aget-object v3, v12, v14

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 243
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "i":I
    .restart local v17    # "i":I
    move/from16 v14, v27

    const/4 v3, 0x1

    goto :goto_5

    .line 247
    .end local v17    # "i":I
    :cond_3
    move-wide/from16 v28, v6

    move-wide/from16 v6, v21

    :try_start_1
    invoke-interface {v5, v13, v6, v7, v2}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    .end local v21    # "inputOffset":J
    .local v6, "inputOffset":J
    .local v28, "totalChunkCountLong":J
    nop

    .line 254
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v14, v1

    if-ge v3, v14, :cond_5

    .line 255
    aget v14, v1, v3

    .line 256
    .local v14, "digestAlgorithm":I
    move-object/from16 v30, v5

    aget-object v5, v4, v3

    .line 257
    .local v5, "concatenationOfChunkCountAndChunkDigests":[B
    .local v30, "input":Landroid/util/apk/DataSource;
    nop

    .line 258
    move-object/from16 v31, v8

    invoke-static {v14}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v8

    .line 259
    .local v8, "expectedDigestSizeBytes":I
    .local v31, "chunkContentPrefix":[B
    move-object/from16 v32, v13

    aget-object v13, v12, v3

    .line 260
    .local v13, "md":Ljava/security/MessageDigest;
    .local v32, "digester":Landroid/util/apk/DataDigester;
    mul-int v17, v11, v8

    move-object/from16 v33, v12

    const/16 v18, 0x5

    add-int v12, v18, v17

    .line 261
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .local v33, "mds":[Ljava/security/MessageDigest;
    invoke-virtual {v13, v5, v12, v8}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v12

    .line 265
    .local v12, "actualDigestSizeBytes":I
    if-ne v12, v8, :cond_4

    .line 254
    .end local v5    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v8    # "expectedDigestSizeBytes":I
    .end local v12    # "actualDigestSizeBytes":I
    .end local v13    # "md":Ljava/security/MessageDigest;
    .end local v14    # "digestAlgorithm":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v30

    move-object/from16 v8, v31

    move-object/from16 v13, v32

    move-object/from16 v12, v33

    goto :goto_6

    .line 266
    .restart local v5    # "concatenationOfChunkCountAndChunkDigests":[B
    .restart local v8    # "expectedDigestSizeBytes":I
    .restart local v12    # "actualDigestSizeBytes":I
    .restart local v13    # "md":Ljava/security/MessageDigest;
    .restart local v14    # "digestAlgorithm":I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    move/from16 v34, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "i":I
    .local v34, "i":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v5

    const-string v5, "Unexpected output size of "

    .end local v5    # "concatenationOfChunkCountAndChunkDigests":[B
    .local v35, "concatenationOfChunkCountAndChunkDigests":[B
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v13}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " digest: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    .end local v14    # "digestAlgorithm":I
    .end local v30    # "input":Landroid/util/apk/DataSource;
    .end local v31    # "chunkContentPrefix":[B
    .end local v32    # "digester":Landroid/util/apk/DataDigester;
    .end local v33    # "mds":[Ljava/security/MessageDigest;
    .end local v34    # "i":I
    .end local v35    # "concatenationOfChunkCountAndChunkDigests":[B
    .local v5, "input":Landroid/util/apk/DataSource;
    .local v8, "chunkContentPrefix":[B
    .local v12, "mds":[Ljava/security/MessageDigest;
    .local v13, "digester":Landroid/util/apk/DataDigester;
    :cond_5
    move-object/from16 v30, v5

    move-object/from16 v31, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    const/16 v18, 0x5

    .end local v5    # "input":Landroid/util/apk/DataSource;
    .end local v8    # "chunkContentPrefix":[B
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v30    # "input":Landroid/util/apk/DataSource;
    .restart local v31    # "chunkContentPrefix":[B
    .restart local v32    # "digester":Landroid/util/apk/DataDigester;
    .restart local v33    # "mds":[Ljava/security/MessageDigest;
    int-to-long v12, v2

    add-long v21, v6, v12

    .line 272
    .end local v6    # "inputOffset":J
    .restart local v21    # "inputOffset":J
    int-to-long v5, v2

    sub-long v19, v9, v5

    .line 273
    .end local v9    # "inputRemaining":J
    .restart local v19    # "inputRemaining":J
    add-int/lit8 v11, v11, 0x1

    .line 274
    .end local v2    # "chunkSize":I
    nop

    .line 239
    move/from16 v9, v18

    move/from16 v3, v25

    move/from16 v14, v27

    move-wide/from16 v6, v28

    move-object/from16 v5, v30

    move-object/from16 v13, v32

    move-object/from16 v12, v33

    move-object/from16 v2, p1

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 248
    .end local v19    # "inputRemaining":J
    .end local v21    # "inputOffset":J
    .end local v30    # "input":Landroid/util/apk/DataSource;
    .end local v31    # "chunkContentPrefix":[B
    .end local v32    # "digester":Landroid/util/apk/DataDigester;
    .end local v33    # "mds":[Ljava/security/MessageDigest;
    .restart local v2    # "chunkSize":I
    .restart local v5    # "input":Landroid/util/apk/DataSource;
    .restart local v6    # "inputOffset":J
    .restart local v8    # "chunkContentPrefix":[B
    .restart local v9    # "inputRemaining":J
    .restart local v12    # "mds":[Ljava/security/MessageDigest;
    .restart local v13    # "digester":Landroid/util/apk/DataDigester;
    :catch_1
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v31, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    .end local v5    # "input":Landroid/util/apk/DataSource;
    .end local v8    # "chunkContentPrefix":[B
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v30    # "input":Landroid/util/apk/DataSource;
    .restart local v31    # "chunkContentPrefix":[B
    .restart local v32    # "digester":Landroid/util/apk/DataDigester;
    .restart local v33    # "mds":[Ljava/security/MessageDigest;
    move-object v3, v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/DigestException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to digest chunk #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " of section #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "chunkSize":I
    .end local v25    # "totalChunkCount":I
    .end local v28    # "totalChunkCountLong":J
    .end local v30    # "input":Landroid/util/apk/DataSource;
    .end local v31    # "chunkContentPrefix":[B
    .end local v32    # "digester":Landroid/util/apk/DataDigester;
    .end local v33    # "mds":[Ljava/security/MessageDigest;
    .local v3, "totalChunkCount":I
    .restart local v5    # "input":Landroid/util/apk/DataSource;
    .local v6, "totalChunkCountLong":J
    .restart local v8    # "chunkContentPrefix":[B
    .restart local v12    # "mds":[Ljava/security/MessageDigest;
    .restart local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v21    # "inputOffset":J
    :cond_6
    move/from16 v25, v3

    move-object/from16 v30, v5

    move-wide/from16 v28, v6

    move-object/from16 v31, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    move/from16 v27, v14

    move-wide/from16 v6, v21

    const/16 v18, 0x5

    .end local v3    # "totalChunkCount":I
    .end local v5    # "input":Landroid/util/apk/DataSource;
    .end local v8    # "chunkContentPrefix":[B
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .end local v21    # "inputOffset":J
    .local v6, "inputOffset":J
    .restart local v25    # "totalChunkCount":I
    .restart local v28    # "totalChunkCountLong":J
    .restart local v30    # "input":Landroid/util/apk/DataSource;
    .restart local v31    # "chunkContentPrefix":[B
    .restart local v32    # "digester":Landroid/util/apk/DataDigester;
    .restart local v33    # "mds":[Ljava/security/MessageDigest;
    add-int/lit8 v15, v15, 0x1

    .line 237
    .end local v6    # "inputOffset":J
    .end local v9    # "inputRemaining":J
    .end local v30    # "input":Landroid/util/apk/DataSource;
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v18

    move-wide/from16 v6, v28

    move-object/from16 v2, p1

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 278
    .end local v25    # "totalChunkCount":I
    .end local v28    # "totalChunkCountLong":J
    .end local v31    # "chunkContentPrefix":[B
    .end local v32    # "digester":Landroid/util/apk/DataDigester;
    .end local v33    # "mds":[Ljava/security/MessageDigest;
    .restart local v3    # "totalChunkCount":I
    .local v6, "totalChunkCountLong":J
    .restart local v8    # "chunkContentPrefix":[B
    .restart local v12    # "mds":[Ljava/security/MessageDigest;
    .restart local v13    # "digester":Landroid/util/apk/DataDigester;
    :cond_7
    move/from16 v25, v3

    move-wide/from16 v28, v6

    move-object/from16 v31, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    .end local v3    # "totalChunkCount":I
    .end local v6    # "totalChunkCountLong":J
    .end local v8    # "chunkContentPrefix":[B
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v25    # "totalChunkCount":I
    .restart local v28    # "totalChunkCountLong":J
    .restart local v31    # "chunkContentPrefix":[B
    .restart local v32    # "digester":Landroid/util/apk/DataDigester;
    .restart local v33    # "mds":[Ljava/security/MessageDigest;
    array-length v0, v1

    new-array v2, v0, [[B

    .line 279
    .local v2, "result":[[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v3, v16

    .end local v16    # "i":I
    .local v3, "i":I
    array-length v0, v1

    if-ge v3, v0, :cond_8

    .line 280
    aget v5, v1, v3

    .line 281
    .local v5, "digestAlgorithm":I
    aget-object v6, v4, v3

    .line 282
    .local v6, "input":[B
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 285
    .local v7, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_2
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 288
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 287
    nop

    .line 289
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 290
    .local v8, "output":[B
    aput-object v8, v2, v3

    .line 279
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v5    # "digestAlgorithm":I
    .end local v6    # "input":[B
    .end local v7    # "jcaAlgorithmName":Ljava/lang/String;
    .end local v8    # "output":[B
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "i":I
    .restart local v16    # "i":I
    goto :goto_7

    .line 286
    .end local v16    # "i":I
    .restart local v3    # "i":I
    .restart local v5    # "digestAlgorithm":I
    .restart local v6    # "input":[B
    .restart local v7    # "jcaAlgorithmName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 287
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " digest not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 292
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "i":I
    .end local v5    # "digestAlgorithm":I
    .end local v6    # "input":[B
    .end local v7    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_8
    return-object v2

    .line 201
    .end local v2    # "result":[[B
    .end local v4    # "digestsOfChunks":[[B
    .end local v11    # "chunkIndex":I
    .end local v15    # "dataSourceIndex":I
    .end local v25    # "totalChunkCount":I
    .end local v28    # "totalChunkCountLong":J
    .end local v31    # "chunkContentPrefix":[B
    .end local v32    # "digester":Landroid/util/apk/DataDigester;
    .end local v33    # "mds":[Ljava/security/MessageDigest;
    .local v6, "totalChunkCountLong":J
    :cond_9
    move-wide/from16 v28, v6

    .end local v6    # "totalChunkCountLong":J
    .restart local v28    # "totalChunkCountLong":J
    new-instance v0, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many chunks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v28

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v28    # "totalChunkCountLong":J
    .local v3, "totalChunkCountLong":J
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 735
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 742
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Landroid/util/apk/ApkSigningBlockUtils;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 744
    .local v0, "pairs":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 745
    .local v2, "entryCount":I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 746
    add-int/lit8 v2, v2, 0x1

    .line 747
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 751
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 752
    .local v3, "lenLong":J
    const-wide/16 v5, 0x4

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 757
    long-to-int v5, v3

    .line 758
    .local v5, "len":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    .line 759
    .local v6, "nextEntryPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v5, v7, :cond_1

    .line 764
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 765
    .local v7, "id":I
    if-ne v7, p1, :cond_0

    .line 766
    add-int/lit8 v1, v5, -0x4

    invoke-static {v0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 768
    :cond_0
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 769
    .end local v3    # "lenLong":J
    .end local v5    # "len":I
    .end local v6    # "nextEntryPos":I
    .end local v7    # "id":I
    goto :goto_0

    .line 760
    .restart local v3    # "lenLong":J
    .restart local v5    # "len":I
    .restart local v6    # "nextEntryPos":I
    :cond_1
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block entry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " size out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 753
    .end local v5    # "len":I
    .end local v6    # "nextEntryPos":I
    :cond_2
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APK Signing Block entry #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    .end local v3    # "lenLong":J
    :cond_3
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_4
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No block with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in APK Signing Block."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 12
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 690
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 698
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 699
    .local v0, "footer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 700
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 701
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 702
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/16 v1, 0x10

    .line 703
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 708
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 709
    .local v2, "apkSigBlockSizeInFooter":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 714
    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    long-to-int v4, v4

    .line 715
    .local v4, "totalSize":I
    int-to-long v5, v4

    sub-long v5, p1, v5

    .line 716
    .local v5, "apkSigBlockOffset":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    .line 720
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 721
    .local v7, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 722
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 723
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 724
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 725
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v1, v8, v2

    if-nez v1, :cond_0

    .line 730
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 726
    :cond_0
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " vs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    .end local v7    # "apkSigBlock":Ljava/nio/ByteBuffer;
    .end local v8    # "apkSigBlockSizeInHeader":J
    :cond_1
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block offset out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    .end local v4    # "totalSize":I
    .end local v5    # "apkSigBlockOffset":J
    :cond_2
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK Signing Block size out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    .end local v2    # "apkSigBlockSizeInFooter":J
    :cond_3
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    .end local v0    # "footer":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v0, Landroid/util/apk/SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;
    .locals 22
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 61
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v1

    .line 62
    .local v1, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 63
    .local v2, "eocd":Ljava/nio/ByteBuffer;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 64
    .local v12, "eocdOffset":J
    invoke-static {v0, v12, v13}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-static {v2, v12, v13}, Landroid/util/apk/ApkSigningBlockUtils;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    .line 70
    .local v14, "centralDirOffset":J
    nop

    .line 71
    invoke-static {v0, v14, v15}, Landroid/util/apk/ApkSigningBlockUtils;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v11

    .line 72
    .local v11, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 73
    .local v9, "apkSigningBlock":Ljava/nio/ByteBuffer;
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 76
    .local v16, "apkSigningBlockOffset":J
    move/from16 v10, p1

    invoke-static {v9, v10}, Landroid/util/apk/ApkSigningBlockUtils;->findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 79
    .local v18, "apkSignatureSchemeBlock":Ljava/nio/ByteBuffer;
    new-instance v19, Landroid/util/apk/SignatureInfo;

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move-wide/from16 v5, v16

    move-wide v7, v14

    move-object/from16 v20, v9

    move-wide v9, v12

    .end local v9    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .local v20, "apkSigningBlock":Ljava/nio/ByteBuffer;
    move-object/from16 v21, v11

    move-object v11, v2

    .end local v11    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .local v21, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    invoke-direct/range {v3 .. v11}, Landroid/util/apk/SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object v19

    .line 65
    .end local v14    # "centralDirOffset":J
    .end local v16    # "apkSigningBlockOffset":J
    .end local v18    # "apkSignatureSchemeBlock":Ljava/nio/ByteBuffer;
    .end local v20    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .end local v21    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :cond_0
    new-instance v3, Landroid/util/apk/SignatureNotFoundException;

    const-string v4, "ZIP64 APK not supported"

    invoke-direct {v3, v4}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B
    .locals 4
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p2, p1}, Landroid/util/apk/ApkVerityBuilder;->generateApkVerity(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;

    move-result-object v2

    .line 366
    .local v2, "result":Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    iget-object v3, v2, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;->rootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 366
    return-object v3

    .line 367
    .end local v2    # "result":Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw v2
.end method

.method static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 620
    if-ltz p1, :cond_1

    .line 623
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 624
    .local v0, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 625
    .local v1, "position":I
    add-int v2, v1, p1

    .line 626
    .local v2, "limit":I
    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    .line 629
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 631
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 632
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    nop

    .line 636
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 634
    return-object v3

    .line 636
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v3

    .line 627
    :cond_0
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 621
    .end local v0    # "originalLimit":I
    .end local v1    # "position":I
    .end local v2    # "limit":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 6
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 390
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 391
    .local v0, "centralDirOffset":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    .line 396
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 397
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 402
    return-wide v0

    .line 398
    :cond_0
    new-instance v4, Landroid/util/apk/SignatureNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    .end local v2    # "centralDirSize":J
    :cond_1
    new-instance v2, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getChunkCount(J)J
    .locals 6
    .param p0, "inputSizeBytes"    # J

    .line 406
    const-wide/32 v0, 0x100000

    add-long v2, p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    return-wide v2
.end method

.method static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .line 496
    packed-switch p0, :pswitch_data_0

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :pswitch_0
    const-string v0, "SHA-512"

    return-object v0

    .line 499
    :pswitch_1
    const-string v0, "SHA-256"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getContentDigestAlgorithmOutputSizeBytes(I)I
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .line 509
    packed-switch p0, :pswitch_data_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :pswitch_0
    const/16 v0, 0x40

    return v0

    .line 512
    :pswitch_1
    const/16 v0, 0x20

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 378
    nop

    .line 379
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 380
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 384
    return-object v0

    .line 381
    :cond_0
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 646
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 647
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 649
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 653
    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 650
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 4
    .param p0, "sigAlgorithm"    # I

    .line 474
    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    const/16 v0, 0x421

    if-eq p0, v0, :cond_0

    const/16 v0, 0x423

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 491
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 487
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 479
    :cond_1
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgorithm"    # I

    .line 522
    const/16 v0, 0x301

    if-eq p0, v0, :cond_2

    const/16 v0, 0x421

    if-eq p0, v0, :cond_1

    const/16 v0, 0x423

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 539
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    :pswitch_0
    const-string v0, "EC"

    return-object v0

    .line 528
    :cond_1
    :pswitch_1
    const-string v0, "RSA"

    return-object v0

    .line 535
    :cond_2
    const-string v0, "DSA"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .locals 8
    .param p0, "sigAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 545
    const/16 v0, 0x301

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x421

    if-eq p0, v0, :cond_1

    const/16 v0, 0x423

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 572
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_0
    const-string v0, "SHA512withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 560
    :pswitch_1
    const-string v0, "SHA512withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 552
    :pswitch_2
    const-string v0, "SHA512withRSA/PSS"

    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x40

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 547
    :pswitch_3
    const-string v0, "SHA256withRSA/PSS"

    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x20

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 563
    :cond_0
    :pswitch_4
    const-string v0, "SHA256withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 558
    :cond_1
    :pswitch_5
    const-string v0, "SHA256withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 568
    :cond_2
    const-string v0, "SHA256withDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method static parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "fileSize"    # J
    .param p3, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 309
    const/16 v0, 0x20

    .line 310
    .local v0, "kRootHashSize":I
    const/16 v1, 0x8

    .line 312
    .local v1, "kSourceLengthSize":I
    array-length v2, p0

    add-int v3, v0, v1

    if-ne v2, v3, :cond_1

    .line 315
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 316
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 319
    .local v3, "expectedSourceLength":J
    iget-wide v5, p3, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v7, p3, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v5, v7

    .line 321
    .local v5, "signingBlockSize":J
    sub-long v7, p1, v5

    cmp-long v7, v3, v7

    if-nez v7, :cond_0

    .line 325
    const/4 v7, 0x0

    invoke-static {p0, v7, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    return-object v7

    .line 322
    :cond_0
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "APK content size did not verify"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 313
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "expectedSourceLength":J
    .end local v5    # "signingBlockSize":J
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verity digest size is wrong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 658
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 660
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 664
    new-array v1, v0, [B

    .line 665
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 666
    return-object v1

    .line 661
    .end local v1    # "result":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static setUnsignedInt32LittleEndian(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "result"    # [B
    .param p2, "offset"    # I

    .line 670
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 671
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 672
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 673
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 674
    return-void
.end method

.method static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 583
    if-ltz p1, :cond_2

    .line 586
    if-lt p2, p1, :cond_1

    .line 589
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 590
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 593
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 594
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 596
    .local v2, "originalPosition":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 597
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 598
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 599
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 600
    .local v4, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    nop

    .line 603
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 604
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 605
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 601
    return-object v4

    .line 603
    .end local v4    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 604
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 605
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4

    .line 591
    .end local v1    # "originalLimit":I
    .end local v2    # "originalPosition":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end > capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    .end local v0    # "capacity":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end < start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    .locals 5
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/RandomAccessFile;",
            "Landroid/util/apk/SignatureInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 91
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    const/4 v0, 0x1

    .line 97
    .local v0, "neverVerified":Z
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 98
    .local v1, "expected1MbChunkDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 99
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 103
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityFor1MbChunkBasedAlgorithm(Ljava/util/Map;Ljava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v0, 0x0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot get FD"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 116
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    nop

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 117
    invoke-static {v2, p1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 119
    const/4 v0, 0x0

    .line 122
    :cond_3
    if-nez v0, :cond_4

    .line 125
    return-void

    .line 123
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No known digest exists for integrity check"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v0    # "neverVerified":Z
    .end local v1    # "expected1MbChunkDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyIntegrityFor1MbChunkBasedAlgorithm(Ljava/util/Map;Ljava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)V
    .locals 16
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "Landroid/util/apk/SignatureInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 141
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v1, p2

    new-instance v0, Landroid/util/apk/MemoryMappedFileDataSource;

    iget-wide v6, v1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 144
    .local v2, "beforeApkSigningBlock":Landroid/util/apk/DataSource;
    new-instance v0, Landroid/util/apk/MemoryMappedFileDataSource;

    iget-wide v5, v1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v3, v1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    iget-wide v7, v1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long v7, v3, v7

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 151
    .local v3, "centralDir":Landroid/util/apk/DataSource;
    iget-object v0, v1, Landroid/util/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 152
    .local v4, "eocdBuf":Ljava/nio/ByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    iget-wide v5, v1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v4, v5, v6}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 154
    new-instance v0, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v0, v4}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v5, v0

    .line 156
    .local v5, "eocd":Landroid/util/apk/DataSource;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 157
    .local v6, "digestAlgorithms":[I
    const/4 v0, 0x0

    .line 158
    .local v0, "digestAlgorithmCount":I
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "digestAlgorithmCount":I
    .local v8, "digestAlgorithmCount":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "digestAlgorithm":I
    aput v0, v6, v8

    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 161
    .end local v0    # "digestAlgorithm":I
    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Landroid/util/apk/DataSource;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    const/4 v9, 0x1

    aput-object v3, v0, v9

    const/4 v9, 0x2

    aput-object v5, v0, v9

    .line 165
    invoke-static {v6, v0}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([I[Landroid/util/apk/DataSource;)[[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v0, "actualDigests":[[B
    nop

    .line 169
    nop

    .line 171
    nop

    .local v7, "i":I
    :goto_1
    array-length v9, v6

    if-ge v7, v9, :cond_2

    .line 172
    aget v9, v6, v7

    .line 173
    .local v9, "digestAlgorithm":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, p0

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 174
    .local v10, "expectedDigest":[B
    aget-object v12, v0, v7

    .line 175
    .local v12, "actualDigest":[B
    invoke-static {v10, v12}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 171
    .end local v9    # "digestAlgorithm":I
    .end local v10    # "expectedDigest":[B
    .end local v12    # "actualDigest":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 176
    .restart local v9    # "digestAlgorithm":I
    .restart local v10    # "expectedDigest":[B
    .restart local v12    # "actualDigest":[B
    :cond_1
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " digest of contents did not verify"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 181
    .end local v7    # "i":I
    .end local v9    # "digestAlgorithm":I
    .end local v10    # "expectedDigest":[B
    .end local v12    # "actualDigest":[B
    :cond_2
    move-object/from16 v11, p0

    return-void

    .line 168
    .end local v0    # "actualDigests":[[B
    :catch_0
    move-exception v0

    move-object/from16 v11, p0

    .line 169
    .local v0, "e":Ljava/security/DigestException;
    new-instance v7, Ljava/lang/SecurityException;

    const-string v9, "Failed to compute digest(s) of contents"

    invoke-direct {v7, v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    .locals 4
    .param p0, "expectedDigest"    # [B
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 333
    nop

    .line 334
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 333
    invoke-static {p0, v0, v1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v0

    .line 335
    .local v0, "expectedRootHash":[B
    new-instance v1, Landroid/util/apk/ApkSigningBlockUtils$1;

    invoke-direct {v1}, Landroid/util/apk/ApkSigningBlockUtils$1;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/apk/ApkVerityBuilder;->generateApkVerity(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;

    move-result-object v1

    .line 342
    .local v1, "verity":Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    iget-object v2, v1, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;->rootHash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    .end local v0    # "expectedRootHash":[B
    .end local v1    # "verity":Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    nop

    .line 348
    return-void

    .line 343
    .restart local v0    # "expectedRootHash":[B
    .restart local v1    # "verity":Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "APK verity digest of contents did not verify"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0    # "expectedRootHash":[B
    .end local v1    # "verity":Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error during verification"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
