.class abstract Landroid/util/apk/ApkVerityBuilder;
.super Ljava/lang/Object;
.source "ApkVerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkVerityBuilder$BufferedDigester;,
        Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE_BYTES:I = 0x1000

.field private static final DEFAULT_SALT:[B

.field private static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FSVERITY_HEADER_SIZE_BYTES:I = 0x40

.field private static final JCA_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final MMAP_REGION_SIZE_BYTES:I = 0x100000

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_SIZE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Landroid/util/apk/ApkVerityBuilder;->DEFAULT_SALT:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V
    .locals 8
    .param p0, "signatureInfo"    # Landroid/util/apk/SignatureInfo;

    .line 446
    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 452
    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v6, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v6

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of APK Signing Block is not a multiple of 4096: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v4, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK Signing Block does not start at the page  boundary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateFsveritySignatureInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 19
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "treeOutput"    # Ljava/nio/ByteBuffer;
    .param p3, "rootHashOutput"    # Ljava/nio/ByteBuffer;
    .param p4, "headerOutput"    # Ljava/nio/ByteBuffer;
    .param p5, "extensionsOutput"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 134
    move-object/from16 v11, p5

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkVerityBuilder;->assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V

    .line 135
    iget-wide v4, v0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v6, v0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long v12, v4, v6

    .line 137
    .local v12, "signingBlockSize":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long v14, v4, v12

    .line 138
    .local v14, "dataSize":J
    invoke-static {v14, v15}, Landroid/util/apk/ApkVerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v9

    .line 140
    .local v9, "levelOffset":[I
    if-eqz v1, :cond_0

    .line 141
    sget-object v4, Landroid/util/apk/ApkVerityBuilder;->DEFAULT_SALT:[B

    move-object/from16 v10, p0

    invoke-static {v10, v0, v4, v9, v1}, Landroid/util/apk/ApkVerityBuilder;->generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 143
    .local v4, "apkRootHash":[B
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .end local v4    # "apkRootHash":[B
    goto :goto_0

    .line 149
    :cond_0
    move-object/from16 v10, p0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 150
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    array-length v6, v9

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Landroid/util/apk/ApkVerityBuilder;->DEFAULT_SALT:[B

    invoke-static {v3, v4, v5, v6, v7}, Landroid/util/apk/ApkVerityBuilder;->generateFsverityHeader(Ljava/nio/ByteBuffer;JI[B)Ljava/nio/ByteBuffer;

    .line 155
    :cond_2
    if-eqz v11, :cond_3

    .line 156
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    iget-wide v5, v0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    iget-wide v7, v0, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    move-object v4, v11

    move-wide/from16 v16, v7

    move-wide v7, v12

    move-object/from16 v18, v9

    move-wide/from16 v9, v16

    .end local v9    # "levelOffset":[I
    .local v18, "levelOffset":[I
    invoke-static/range {v4 .. v10}, Landroid/util/apk/ApkVerityBuilder;->generateFsverityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 160
    .end local v18    # "levelOffset":[I
    .restart local v9    # "levelOffset":[I
    :cond_3
    move-object/from16 v18, v9

    .end local v9    # "levelOffset":[I
    .restart local v18    # "levelOffset":[I
    :goto_1
    return-void
.end method

.method private static calculateVerityLevelOffset(J)[I
    .locals 8
    .param p0, "fileSize"    # J

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v0, "levelSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    const-wide/16 v1, 0x1000

    invoke-static {p0, p1, v1, v2}, Landroid/util/apk/ApkVerityBuilder;->divideRoundup(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x20

    mul-long/2addr v3, v5

    .line 426
    .local v3, "levelDigestSize":J
    invoke-static {v3, v4, v1, v2}, Landroid/util/apk/ApkVerityBuilder;->divideRoundup(JJ)J

    move-result-wide v5

    mul-long/2addr v5, v1

    .line 427
    .local v5, "chunksSize":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 429
    nop

    .line 435
    .end local v3    # "levelDigestSize":J
    .end local v5    # "chunksSize":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 436
    .local v1, "levelOffset":[I
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 437
    nop

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 439
    add-int/lit8 v3, v2, 0x1

    aget v4, v1, v2

    .line 440
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 442
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 431
    .end local v1    # "levelOffset":[I
    .restart local v3    # "levelDigestSize":J
    .restart local v5    # "chunksSize":J
    :cond_1
    move-wide p0, v3

    .line 432
    .end local v3    # "levelDigestSize":J
    .end local v5    # "chunksSize":J
    goto :goto_0
.end method

.method private static consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V
    .locals 9
    .param p0, "digester"    # Landroid/util/apk/DataDigester;
    .param p1, "source"    # Landroid/util/apk/DataSource;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v0

    .line 242
    .local v0, "inputRemaining":J
    const-wide/16 v2, 0x0

    move-wide v4, v0

    move-wide v0, v2

    .line 243
    .local v0, "inputOffset":J
    .local v4, "inputRemaining":J
    :goto_0
    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 244
    int-to-long v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 245
    .local v6, "size":I
    invoke-interface {p1, p0, v0, v1, v6}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V

    .line 246
    int-to-long v7, v6

    add-long/2addr v0, v7

    .line 247
    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 248
    .end local v6    # "size":I
    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method private static divideRoundup(JJ)J
    .locals 4
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 476
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static generateApkVerity(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
    .locals 19
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v6, p1

    .line 71
    iget-wide v0, v6, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, v6, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long v7, v0, v2

    .line 73
    .local v7, "signingBlockSize":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long v9, v0, v7

    .line 74
    .local v9, "dataSize":J
    invoke-static {v9, v10}, Landroid/util/apk/ApkVerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v11

    .line 75
    .local v11, "levelOffset":[I
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget v12, v11, v0

    .line 77
    .local v12, "merkleTreeSize":I
    add-int/lit16 v0, v12, 0x1000

    move-object/from16 v13, p2

    invoke-interface {v13, v0}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 80
    .local v14, "output":Ljava/nio/ByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    const/4 v0, 0x0

    invoke-static {v14, v0, v12}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 83
    .local v15, "tree":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v12, 0x40

    invoke-static {v14, v12, v0}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 85
    .local v16, "header":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v12, 0x40

    add-int/lit16 v1, v12, 0x1000

    invoke-static {v14, v0, v1}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 87
    .local v5, "extensions":Ljava/nio/ByteBuffer;
    const/16 v0, 0x20

    new-array v4, v0, [B

    .line 88
    .local v4, "apkDigestBytes":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 89
    .local v3, "apkDigest":Ljava/nio/ByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v15

    move-object/from16 v17, v3

    .end local v3    # "apkDigest":Ljava/nio/ByteBuffer;
    .local v17, "apkDigest":Ljava/nio/ByteBuffer;
    move-object v6, v4

    move-object/from16 v4, v16

    .end local v4    # "apkDigestBytes":[B
    .local v6, "apkDigestBytes":[B
    move-object/from16 v18, v5

    .end local v5    # "extensions":Ljava/nio/ByteBuffer;
    .local v18, "extensions":Ljava/nio/ByteBuffer;
    invoke-static/range {v0 .. v5}, Landroid/util/apk/ApkVerityBuilder;->calculateFsveritySignatureInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 95
    add-int/lit8 v0, v12, 0x40

    move-object/from16 v1, v18

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .end local v18    # "extensions":Ljava/nio/ByteBuffer;
    .local v1, "extensions":Ljava/nio/ByteBuffer;
    add-int/2addr v0, v2

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v2, 0x40

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 100
    new-instance v0, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;

    invoke-direct {v0, v14, v6}, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;-><init>(Ljava/nio/ByteBuffer;[B)V

    return-object v0
.end method

.method private static generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V
    .locals 18
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "salt"    # [B
    .param p3, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 258
    new-instance v1, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v4, v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/ApkVerityBuilder$1;)V

    .line 261
    .local v1, "digester":Landroid/util/apk/ApkVerityBuilder$BufferedDigester;
    new-instance v2, Landroid/util/apk/MemoryMappedFileDataSource;

    .line 262
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-wide v9, v0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v7, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 261
    const/high16 v5, 0x100000

    invoke-static {v1, v2, v5}, Landroid/util/apk/ApkVerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 267
    iget-wide v6, v0, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    .line 269
    .local v6, "eocdCdOffsetFieldPosition":J
    new-instance v2, Landroid/util/apk/MemoryMappedFileDataSource;

    .line 270
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    iget-wide v10, v0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v12, v0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long v12, v6, v12

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 269
    invoke-static {v1, v2, v5}, Landroid/util/apk/ApkVerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 275
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 276
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 277
    .local v2, "alternativeCentralDirOffset":Ljava/nio/ByteBuffer;
    iget-wide v8, v0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 279
    invoke-virtual {v1, v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 282
    const-wide/16 v8, 0x4

    add-long/2addr v8, v6

    .line 284
    .local v8, "offsetAfterEocdCdOffsetField":J
    new-instance v14, Landroid/util/apk/MemoryMappedFileDataSource;

    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 286
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    sub-long v15, v12, v8

    move-object v10, v14

    move-wide v12, v8

    move-object v5, v14

    move-wide v14, v15

    invoke-direct/range {v10 .. v15}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 284
    const/high16 v10, 0x100000

    invoke-static {v1, v5, v10}, Landroid/util/apk/ApkVerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x1000

    rem-long/2addr v10, v12

    long-to-int v5, v10

    .line 291
    .local v5, "lastIncompleteChunkSize":I
    if-eqz v5, :cond_0

    .line 292
    rsub-int v10, v5, 0x1000

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 294
    :cond_0
    invoke-virtual {v1}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 297
    invoke-static {v1}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->access$100(Landroid/util/apk/ApkVerityBuilder$BufferedDigester;)V

    .line 298
    return-void
.end method

.method private static generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B
    .locals 7
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "salt"    # [B
    .param p3, "levelOffset"    # [I
    .param p4, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 304
    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    aget v0, p3, v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p3, v1

    invoke-static {p4, v0, v1}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkVerityBuilder;->generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V

    .line 308
    array-length v0, p3

    add-int/lit8 v0, v0, -0x3

    .local v0, "level":I
    :goto_0
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 309
    add-int/lit8 v3, v0, 0x1

    aget v3, p3, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p3, v4

    invoke-static {p4, v3, v4}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 310
    .local v3, "inputBuffer":Ljava/nio/ByteBuffer;
    aget v4, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p3, v5

    invoke-static {p4, v4, v5}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 312
    .local v4, "outputBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v5, v3}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 313
    .local v5, "source":Landroid/util/apk/DataSource;
    new-instance v6, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;

    invoke-direct {v6, p2, v4, v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/ApkVerityBuilder$1;)V

    move-object v2, v6

    .line 314
    .local v2, "digester":Landroid/util/apk/ApkVerityBuilder$BufferedDigester;
    invoke-static {v2, v5, v1}, Landroid/util/apk/ApkVerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 315
    invoke-virtual {v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 316
    invoke-static {v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->access$100(Landroid/util/apk/ApkVerityBuilder$BufferedDigester;)V

    .line 308
    .end local v2    # "digester":Landroid/util/apk/ApkVerityBuilder$BufferedDigester;
    .end local v3    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "source":Landroid/util/apk/DataSource;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 320
    .end local v0    # "level":I
    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 321
    .local v0, "rootHash":[B
    new-instance v3, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, p2, v4, v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/ApkVerityBuilder$1;)V

    move-object v2, v3

    .line 322
    .restart local v2    # "digester":Landroid/util/apk/ApkVerityBuilder$BufferedDigester;
    const/4 v3, 0x0

    invoke-static {p4, v3, v1}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 323
    invoke-virtual {v2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 324
    return-object v0
.end method

.method private static generateFsverityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "signingBlockOffset"    # J
    .param p3, "signingBlockSize"    # J
    .param p5, "eocdOffset"    # J

    .line 372
    const/16 v0, 0x8

    .line 373
    .local v0, "kSizeOfFsverityExtensionHeader":I
    const/16 v1, 0x8

    .line 377
    .local v1, "kExtensionSizeAlignment":I
    const/16 v2, 0x10

    .line 380
    .local v2, "kSizeOfFsverityElidedExtension":I
    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 381
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 382
    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/util/apk/ApkVerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 385
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 386
    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 391
    .end local v2    # "kSizeOfFsverityElidedExtension":I
    const/16 v2, 0x14

    .line 395
    .local v2, "kTotalSize":I
    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 396
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 397
    invoke-static {p0, v3}, Landroid/util/apk/ApkVerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 400
    const-wide/16 v3, 0x10

    add-long/2addr v3, p5

    invoke-virtual {p0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 401
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 405
    const/4 v3, 0x4

    .line 406
    .local v3, "kPadding":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 407
    const/4 v3, 0x0

    .line 409
    :cond_0
    invoke-static {p0, v3}, Landroid/util/apk/ApkVerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 412
    .end local v2    # "kTotalSize":I
    .end local v3    # "kPadding":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 413
    return-object p0
.end method

.method private static generateFsverityHeader(Ljava/nio/ByteBuffer;JI[B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "fileSize"    # J
    .param p3, "depth"    # I
    .param p4, "salt"    # [B

    .line 329
    array-length v0, p4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 334
    const-string v0, "TrueBrew"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 338
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 339
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 344
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 347
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 349
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 351
    invoke-virtual {p0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 352
    const/16 v0, 0x16

    invoke-static {p0, v0}, Landroid/util/apk/ApkVerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 354
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 355
    return-object p0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "salt is not 8 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static generateFsverityRootHash(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;Landroid/util/apk/SignatureInfo;)[B
    .locals 9
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "apkDigest"    # Ljava/nio/ByteBuffer;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "verityBlock":Ljava/nio/ByteBuffer;
    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 113
    .local v2, "header":Ljava/nio/ByteBuffer;
    const/16 v3, 0xfc0

    invoke-static {v0, v1, v3}, Landroid/util/apk/ApkVerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 116
    .local v1, "extensions":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v7, v2

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Landroid/util/apk/ApkVerityBuilder;->calculateFsveritySignatureInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 118
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 119
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 120
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 121
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 122
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4
.end method

.method private static skip(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "bytes"    # I

    .line 471
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 472
    return-void
.end method

.method private static slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .line 462
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 463
    .local v0, "b":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 464
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 465
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method
