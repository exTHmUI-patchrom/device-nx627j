.class public final Landroid/util/proto/ProtoOutputStream;
.super Ljava/lang/Object;
.source "ProtoOutputStream.java"


# static fields
.field public static final FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final FIELD_COUNT_SHIFT:I = 0x28

.field public static final FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final FIELD_ID_MASK:I = -0x8

.field public static final FIELD_ID_SHIFT:I = 0x3

.field public static final FIELD_TYPE_BOOL:J = 0x800000000L

.field public static final FIELD_TYPE_BYTES:J = 0xc00000000L

.field public static final FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final FIELD_TYPE_ENUM:J = 0xe00000000L

.field public static final FIELD_TYPE_FIXED32:J = 0x700000000L

.field public static final FIELD_TYPE_FIXED64:J = 0x600000000L

.field public static final FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final FIELD_TYPE_INT32:J = 0x500000000L

.field public static final FIELD_TYPE_INT64:J = 0x300000000L

.field public static final FIELD_TYPE_MASK:J = 0xff00000000L

.field public static final FIELD_TYPE_MESSAGE:J = 0xb00000000L

.field private static final FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final FIELD_TYPE_SFIXED32:J = 0xf00000000L

.field public static final FIELD_TYPE_SFIXED64:J = 0x1000000000L

.field public static final FIELD_TYPE_SHIFT:I = 0x20

.field public static final FIELD_TYPE_SINT32:J = 0x1100000000L

.field public static final FIELD_TYPE_SINT64:J = 0x1200000000L

.field public static final FIELD_TYPE_STRING:J = 0x900000000L

.field public static final FIELD_TYPE_UINT32:J = 0xd00000000L

.field public static final FIELD_TYPE_UINT64:J = 0x400000000L

.field public static final FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ProtoOutputStream"

.field public static final WIRE_TYPE_END_GROUP:I = 0x4

.field public static final WIRE_TYPE_FIXED32:I = 0x5

.field public static final WIRE_TYPE_FIXED64:I = 0x1

.field public static final WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRE_TYPE_MASK:I = 0x7

.field public static final WIRE_TYPE_START_GROUP:I = 0x3

.field public static final WIRE_TYPE_VARINT:I


# instance fields
.field private mBuffer:Landroid/util/proto/EncodedBuffer;

.field private mCompacted:Z

.field private mCopyBegin:I

.field private mDepth:I

.field private mExpectedObjectToken:J

.field private mNextObjectId:I

.field private mStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 153
    const-string v0, "Double"

    const-string v1, "Float"

    const-string v2, "Int64"

    const-string v3, "UInt64"

    const-string v4, "Int32"

    const-string v5, "Fixed64"

    const-string v6, "Fixed32"

    const-string v7, "Bool"

    const-string v8, "String"

    const-string v9, "Group"

    const-string v10, "Message"

    const-string v11, "Bytes"

    const-string v12, "UInt32"

    const-string v13, "Enum"

    const-string v14, "SFixed32"

    const-string v15, "SFixed64"

    const-string v16, "SInt32"

    const-string v17, "SInt64"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 234
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "chunkSize"    # I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 240
    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 263
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 251
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 252
    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 253
    return-void
.end method

.method private assertNotCompacted()V
    .locals 2

    .line 2435
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_0

    .line 2438
    return-void

    .line 2436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFieldId(JJ)I
    .locals 21
    .param p0, "fieldId"    # J
    .param p2, "expectedFlags"    # J

    move-wide/from16 v0, p0

    .line 2289
    const-wide v4, 0xf0000000000L

    and-long v6, v0, v4

    .line 2290
    .local v6, "fieldCount":J
    const-wide v8, 0xff00000000L

    and-long v10, v0, v8

    .line 2291
    .local v10, "fieldType":J
    and-long v4, p2, v4

    .line 2292
    .local v4, "expectedCount":J
    and-long v8, p2, v8

    .line 2293
    .local v8, "expectedType":J
    long-to-int v12, v0

    if-eqz v12, :cond_7

    .line 2297
    cmp-long v12, v10, v8

    const-wide v13, 0x50000000000L

    if-nez v12, :cond_1

    cmp-long v12, v6, v4

    if-eqz v12, :cond_0

    cmp-long v12, v6, v13

    if-nez v12, :cond_1

    const-wide v15, 0x20000000000L

    cmp-long v12, v4, v15

    if-eqz v12, :cond_0

    goto :goto_0

    .line 2345
    :cond_0
    long-to-int v12, v0

    return v12

    .line 2301
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v12

    .line 2302
    .local v12, "countString":Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v15

    .line 2303
    .local v15, "typeString":Ljava/lang/String;
    const-wide v18, 0xb00000000L

    if-eqz v15, :cond_5

    if-eqz v12, :cond_5

    .line 2304
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2305
    .local v14, "sb":Ljava/lang/StringBuilder;
    cmp-long v16, v8, v18

    if-nez v16, :cond_2

    .line 2306
    const-string/jumbo v13, "start"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2308
    :cond_2
    const-string/jumbo v13, "write"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    :goto_1
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    const-string v13, " called for field "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    long-to-int v13, v0

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2314
    const-string v13, " which should be used with "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    cmp-long v13, v10, v18

    if-nez v13, :cond_3

    .line 2316
    const-string/jumbo v13, "start"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2318
    :cond_3
    const-string/jumbo v13, "write"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    const-wide v16, 0x50000000000L

    cmp-long v13, v6, v16

    if-nez v13, :cond_4

    .line 2323
    const-string v13, " or writeRepeated"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    :cond_4
    const/16 v13, 0x2e

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2327
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2329
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2330
    .local v2, "sb":Ljava/lang/StringBuilder;
    cmp-long v3, v8, v18

    if-nez v3, :cond_6

    .line 2331
    const-string/jumbo v3, "start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2333
    :cond_6
    const-string/jumbo v3, "write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    :goto_3
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    const-string v3, " called with an invalid fieldId: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    const-string v3, ". The proto field ID might be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    long-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2341
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2342
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2294
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "countString":Ljava/lang/String;
    .end local v15    # "typeString":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid proto field "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v12, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " fieldId="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private compactIfNecessary()V
    .locals 4

    .line 2458
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_2

    .line 2459
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-nez v0, :cond_1

    .line 2465
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2466
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    .line 2469
    .local v0, "readableSize":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 2475
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    .line 2476
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2479
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_0

    .line 2480
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2484
    :cond_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2489
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    .end local v0    # "readableSize":I
    goto :goto_0

    .line 2460
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to compact with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " missing calls to endObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2491
    :cond_2
    :goto_0
    return-void
.end method

.method private compactSizes(I)V
    .locals 9
    .param p1, "rawSize"    # I

    .line 2567
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2568
    .local v0, "objectStart":I
    add-int v1, v0, p1

    .line 2570
    .local v1, "objectEnd":I
    :goto_0
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    move v3, v2

    .local v3, "tagPos":I
    if-ge v2, v1, :cond_2

    .line 2571
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v2

    .line 2576
    .local v2, "tag":I
    and-int/lit8 v4, v2, 0x7

    .line 2577
    .local v4, "wireType":I
    packed-switch v4, :pswitch_data_0

    .line 2611
    new-instance v5, Landroid/util/proto/ProtoParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compactSizes Bad tag tag=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " wireType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2613
    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2608
    :pswitch_0
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2609
    goto :goto_2

    .line 2606
    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groups not supported at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2586
    :pswitch_2
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2588
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v5

    .line 2589
    .local v5, "childRawSize":I
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    .line 2590
    .local v6, "childEncodedSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2592
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 2593
    if-ltz v5, :cond_0

    .line 2596
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    .line 2598
    :cond_0
    neg-int v7, v5

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2600
    goto :goto_2

    .line 2582
    .end local v5    # "childRawSize":I
    .end local v6    # "childEncodedSize":I
    :pswitch_3
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2583
    goto :goto_2

    .line 2579
    :goto_1
    :pswitch_4
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2615
    .end local v2    # "tag":I
    .end local v4    # "wireType":I
    :cond_1
    :goto_2
    goto/16 :goto_0

    .line 2616
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertObjectIdToOrdinal(I)I
    .locals 1
    .param p0, "objectId"    # I

    .line 2070
    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method private editEncodedSize(I)I
    .locals 12
    .param p1, "rawSize"    # I

    .line 2498
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2499
    .local v0, "objectStart":I
    add-int v1, v0, p1

    .line 2500
    .local v1, "objectEnd":I
    const/4 v2, 0x0

    .line 2503
    .local v2, "encodedSize":I
    :goto_0
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    move v4, v3

    .local v4, "tagPos":I
    if-ge v3, v1, :cond_3

    .line 2504
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v3

    .line 2505
    .local v3, "tag":I
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 2507
    and-int/lit8 v5, v3, 0x7

    .line 2508
    .local v5, "wireType":I
    packed-switch v5, :pswitch_data_0

    .line 2552
    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " wireType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2554
    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2548
    :pswitch_0
    add-int/lit8 v2, v2, 0x4

    .line 2549
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2550
    goto/16 :goto_3

    .line 2546
    :pswitch_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "groups not supported at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2522
    :pswitch_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    .line 2523
    .local v6, "childRawSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    .line 2524
    .local v7, "childEncodedSizePos":I
    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v8

    .line 2525
    .local v8, "childEncodedSize":I
    if-ltz v6, :cond_1

    .line 2527
    if-ne v8, v6, :cond_0

    .line 2534
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_1

    .line 2528
    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " childEncodedSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " childEncodedSizePos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2537
    :cond_1
    neg-int v9, v6

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v8

    .line 2538
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2540
    :goto_1
    invoke-static {v8}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 2542
    goto :goto_3

    .line 2516
    .end local v6    # "childRawSize":I
    .end local v7    # "childEncodedSizePos":I
    .end local v8    # "childEncodedSize":I
    :pswitch_3
    add-int/lit8 v2, v2, 0x8

    .line 2517
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2518
    goto :goto_3

    .line 2510
    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    .line 2511
    :goto_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    .line 2512
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2556
    .end local v3    # "tag":I
    .end local v5    # "wireType":I
    :cond_2
    :goto_3
    goto/16 :goto_0

    .line 2558
    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endObjectImpl(JZ)V
    .locals 10
    .param p1, "token"    # J
    .param p3, "repeated"    # Z

    .line 2176
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v0

    .line 2177
    .local v0, "depth":I
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v1

    .line 2178
    .local v1, "expectedRepeated":Z
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v2

    .line 2179
    .local v2, "sizePos":I
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    .line 2181
    .local v3, "childRawSize":I
    if-eq p3, v1, :cond_1

    .line 2182
    if-eqz p3, :cond_0

    .line 2183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2186
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2192
    :cond_1
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v0, :cond_4

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_4

    .line 2202
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v9, v2, 0x4

    .line 2203
    invoke-virtual {v8, v9}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2205
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2206
    if-lez v3, :cond_2

    .line 2207
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2208
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v2, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    .line 2209
    :cond_2
    if-eqz p3, :cond_3

    .line 2210
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2211
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    .line 2214
    :cond_3
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    .line 2216
    :goto_0
    return-void

    .line 2195
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " expectedToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2198
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getDepthFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .line 2045
    const/16 v0, 0x33

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static getFieldCountString(J)Ljava/lang/String;
    .locals 2
    .param p0, "fieldCount"    # J

    .line 2364
    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2365
    const-string v0, ""

    return-object v0

    .line 2366
    :cond_0
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 2367
    const-string v0, "Repeated"

    return-object v0

    .line 2368
    :cond_1
    const-wide v0, 0x50000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 2369
    const-string v0, "Packed"

    return-object v0

    .line 2371
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFieldIdString(J)Ljava/lang/String;
    .locals 8
    .param p1, "fieldId"    # J

    .line 2379
    const-wide v0, 0xf0000000000L

    and-long/2addr v0, p1

    .line 2380
    .local v0, "fieldCount":J
    invoke-static {v0, v1}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v2

    .line 2381
    .local v2, "countString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 2382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fieldCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2384
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2388
    :cond_1
    const-wide v3, 0xff00000000L

    and-long/2addr v3, p1

    .line 2389
    .local v3, "fieldType":J
    invoke-static {v3, v4}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v5

    .line 2390
    .local v5, "typeString":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 2391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fieldType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2394
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " fieldId=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2394
    return-object v6
.end method

.method private static getFieldTypeString(J)Ljava/lang/String;
    .locals 3
    .param p0, "fieldType"    # J

    .line 2352
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 2353
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2354
    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 2356
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getObjectIdFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .line 2054
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7ffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getRepeatedFromToken(J)Z
    .locals 4
    .param p0, "token"    # J

    .line 2038
    const/16 v0, 0x3c

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSizePosFromToken(J)I
    .locals 1
    .param p0, "token"    # J

    .line 2061
    long-to-int v0, p0

    return v0
.end method

.method private static getTagSize(I)I
    .locals 1
    .param p0, "id"    # I

    .line 2402
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static getTagSizeFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .line 2031
    const/16 v0, 0x3d

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static makeFieldId(IJ)J
    .locals 4
    .param p0, "id"    # I
    .param p1, "fieldFlags"    # J

    .line 2266
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method public static makeToken(IZIII)J
    .locals 6
    .param p0, "tagSize"    # I
    .param p1, "repeated"    # Z
    .param p2, "depth"    # I
    .param p3, "objectId"    # I
    .param p4, "sizePos"    # I

    .line 2020
    int-to-long v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const/16 v2, 0x3d

    shl-long/2addr v0, v2

    .line 2021
    if-eqz p1, :cond_0

    const-wide/high16 v2, 0x1000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    or-long/2addr v0, v2

    const-wide/16 v2, 0x1ff

    int-to-long v4, p2

    and-long/2addr v2, v4

    const/16 v4, 0x33

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0x7ffff

    int-to-long v4, p3

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    int-to-long v4, p4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 2020
    return-wide v0
.end method

.method private readRawTag()I
    .locals 2

    .line 2653
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2654
    const/4 v0, 0x0

    return v0

    .line 2656
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private startObjectImpl(IZ)J
    .locals 6
    .param p1, "id"    # I
    .param p2, "repeated"    # Z

    .line 2149
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2150
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    .line 2151
    .local v0, "sizePos":I
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2152
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 2157
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2158
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2160
    iget-wide v1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2162
    .local v1, "old":J
    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2163
    iget-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide v3
.end method

.method public static token2String(J)Ljava/lang/String;
    .locals 2
    .param p0, "token"    # J

    .line 2077
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2078
    const-string v0, "Token(0)"

    return-object v0

    .line 2080
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token(val=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getObjectIdFromToken(J)I

    move-result v1

    invoke-static {v1}, Landroid/util/proto/ProtoOutputStream;->convertObjectIdToOrdinal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tagSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sizePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    return-object v0
.end method

.method private writeBoolImpl(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .line 1776
    if-eqz p2, :cond_0

    .line 1777
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1779
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1781
    :cond_0
    return-void
.end method

.method private writeBytesImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .line 1906
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1907
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1908
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1910
    :cond_0
    return-void
.end method

.method private writeDoubleImpl(ID)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "val"    # D

    .line 948
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 950
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 952
    :cond_0
    return-void
.end method

.method private writeEnumImpl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1952
    if-eqz p2, :cond_0

    .line 1953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1954
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1956
    :cond_0
    return-void
.end method

.method private writeFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1521
    if-eqz p2, :cond_0

    .line 1522
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1523
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1525
    :cond_0
    return-void
.end method

.method private writeFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1585
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1586
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1587
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1589
    :cond_0
    return-void
.end method

.method private writeFloatImpl(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 1012
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 1013
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1014
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1016
    :cond_0
    return-void
.end method

.method private writeInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1099
    if-eqz p2, :cond_0

    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1101
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1103
    :cond_0
    return-void
.end method

.method private writeInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1177
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1179
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1181
    :cond_0
    return-void
.end method

.method private writeKnownLengthHeader(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "size"    # I

    .line 2418
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2421
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2422
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2423
    return-void
.end method

.method private writeRepeatedBoolImpl(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .line 1797
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1798
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1799
    return-void
.end method

.method private writeRepeatedBytesImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .line 1926
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1927
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1928
    return-void
.end method

.method private writeRepeatedDoubleImpl(ID)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "val"    # D

    .line 968
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 969
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 970
    return-void
.end method

.method private writeRepeatedEnumImpl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1972
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1973
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1974
    return-void
.end method

.method private writeRepeatedFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1541
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1542
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1543
    return-void
.end method

.method private writeRepeatedFixed64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1605
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1606
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1607
    return-void
.end method

.method private writeRepeatedFloatImpl(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 1032
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1033
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1034
    return-void
.end method

.method private writeRepeatedInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1124
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1125
    return-void
.end method

.method private writeRepeatedInt64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1198
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1199
    return-void
.end method

.method private writeRepeatedSFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1668
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1669
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1670
    return-void
.end method

.method private writeRepeatedSFixed64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1732
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1733
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1734
    return-void
.end method

.method private writeRepeatedSInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1405
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1406
    return-void
.end method

.method private writeRepeatedSInt64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1473
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1474
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1475
    return-void
.end method

.method private writeRepeatedStringImpl(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1864
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_1

    .line 1865
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1869
    :goto_1
    return-void
.end method

.method private writeRepeatedUInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1267
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1268
    return-void
.end method

.method private writeRepeatedUInt64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1336
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1337
    return-void
.end method

.method private writeSFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1648
    if-eqz p2, :cond_0

    .line 1649
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1650
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1652
    :cond_0
    return-void
.end method

.method private writeSFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1712
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1713
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1714
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1716
    :cond_0
    return-void
.end method

.method private writeSInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1384
    if-eqz p2, :cond_0

    .line 1385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1386
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1388
    :cond_0
    return-void
.end method

.method private writeSInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1453
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1455
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1457
    :cond_0
    return-void
.end method

.method private writeStringImpl(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1845
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1846
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 1848
    :cond_0
    return-void
.end method

.method private writeUInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1246
    if-eqz p2, :cond_0

    .line 1247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1248
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1250
    :cond_0
    return-void
.end method

.method private writeUInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1315
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1317
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1319
    :cond_0
    return-void
.end method

.method private writeUnsignedVarintFromSignedInt(I)V
    .locals 3
    .param p1, "val"    # I

    .line 1074
    if-ltz p1, :cond_0

    .line 1075
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1079
    :goto_0
    return-void
.end method

.method private writeUtf8String(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1877
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1878
    .local v0, "buf":[B
    array-length v1, v0

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1879
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    .end local v0    # "buf":[B
    nop

    .line 1883
    return-void

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not possible"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 2663
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    .line 2665
    return-void
.end method

.method public end(J)V
    .locals 1
    .param p1, "token"    # J

    .line 924
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 925
    return-void
.end method

.method public endObject(J)V
    .locals 1
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2112
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2115
    return-void
.end method

.method public endRepeatedObject(J)V
    .locals 1
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2140
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2142
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2143
    return-void
.end method

.method public flush()V
    .locals 4

    .line 2627
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 2628
    return-void

    .line 2630
    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v0, :cond_1

    .line 2633
    return-void

    .line 2635
    :cond_1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_2

    .line 2637
    return-void

    .line 2639
    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2640
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    .line 2642
    .local v0, "data":[B
    :try_start_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2643
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    nop

    .line 2647
    return-void

    .line 2644
    :catch_0
    move-exception v1

    .line 2645
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBytes()[B
    .locals 2

    .line 2448
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2450
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public start(J)J
    .locals 5
    .param p1, "fieldId"    # J

    .line 905
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 906
    long-to-int v0, p1

    .line 908
    .local v0, "id":I
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const-wide v3, 0xb00000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 909
    const-wide v1, 0xf0000000000L

    and-long/2addr v1, p1

    .line 910
    .local v1, "count":J
    const-wide v3, 0x10000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 911
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    .line 912
    :cond_0
    const-wide v3, 0x20000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide v3, 0x50000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 913
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    .line 916
    .end local v1    # "count":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call start(long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startObject(J)J
    .locals 3
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2099
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2100
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2102
    .local v0, "id":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public startRepeatedObject(J)J
    .locals 3
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2127
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2128
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2130
    .local v0, "id":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public write(JD)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # D

    .line 277
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 278
    long-to-int v0, p1

    .line 280
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :pswitch_0
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 344
    goto/16 :goto_0

    .line 335
    :pswitch_1
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 336
    goto/16 :goto_0

    .line 375
    :pswitch_2
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 376
    goto/16 :goto_0

    .line 367
    :pswitch_3
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 368
    goto/16 :goto_0

    .line 391
    :pswitch_4
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 392
    goto/16 :goto_0

    .line 319
    :pswitch_5
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 320
    goto/16 :goto_0

    .line 383
    :pswitch_6
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 384
    goto/16 :goto_0

    .line 351
    :pswitch_7
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 352
    goto/16 :goto_0

    .line 359
    :pswitch_8
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 360
    goto/16 :goto_0

    .line 303
    :pswitch_9
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 304
    goto/16 :goto_0

    .line 327
    :pswitch_a
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 328
    goto/16 :goto_0

    .line 311
    :pswitch_b
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 312
    goto :goto_0

    .line 295
    :pswitch_c
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 296
    goto :goto_0

    .line 287
    :pswitch_d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 288
    goto :goto_0

    .line 339
    :pswitch_e
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 340
    goto :goto_0

    .line 331
    :pswitch_f
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 332
    goto :goto_0

    .line 371
    :pswitch_10
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 372
    goto :goto_0

    .line 363
    :pswitch_11
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 364
    goto :goto_0

    .line 387
    :pswitch_12
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 388
    goto :goto_0

    .line 315
    :pswitch_13
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 316
    goto :goto_0

    .line 379
    :pswitch_14
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 380
    goto :goto_0

    .line 347
    :pswitch_15
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 348
    goto :goto_0

    .line 355
    :pswitch_16
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 356
    goto :goto_0

    .line 299
    :pswitch_17
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 300
    goto :goto_0

    .line 323
    :pswitch_18
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 324
    goto :goto_0

    .line 307
    :pswitch_19
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 308
    goto :goto_0

    .line 291
    :pswitch_1a
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 292
    goto :goto_0

    .line 283
    :pswitch_1b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 284
    nop

    .line 399
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JF)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # F

    .line 412
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 413
    long-to-int v0, p1

    .line 415
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    .line 530
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :pswitch_0
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 479
    goto/16 :goto_0

    .line 470
    :pswitch_1
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 471
    goto/16 :goto_0

    .line 510
    :pswitch_2
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 511
    goto/16 :goto_0

    .line 502
    :pswitch_3
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 503
    goto/16 :goto_0

    .line 526
    :pswitch_4
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 527
    goto/16 :goto_0

    .line 454
    :pswitch_5
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 455
    goto/16 :goto_0

    .line 518
    :pswitch_6
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 519
    goto/16 :goto_0

    .line 486
    :pswitch_7
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 487
    goto/16 :goto_0

    .line 494
    :pswitch_8
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 495
    goto/16 :goto_0

    .line 438
    :pswitch_9
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 439
    goto/16 :goto_0

    .line 462
    :pswitch_a
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 463
    goto/16 :goto_0

    .line 446
    :pswitch_b
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 447
    goto :goto_0

    .line 430
    :pswitch_c
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 431
    goto :goto_0

    .line 422
    :pswitch_d
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 423
    goto :goto_0

    .line 474
    :pswitch_e
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 475
    goto :goto_0

    .line 466
    :pswitch_f
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 467
    goto :goto_0

    .line 506
    :pswitch_10
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 507
    goto :goto_0

    .line 498
    :pswitch_11
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 499
    goto :goto_0

    .line 522
    :pswitch_12
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 523
    goto :goto_0

    .line 450
    :pswitch_13
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 451
    goto :goto_0

    .line 514
    :pswitch_14
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 515
    goto :goto_0

    .line 482
    :pswitch_15
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 483
    goto :goto_0

    .line 490
    :pswitch_16
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 491
    goto :goto_0

    .line 434
    :pswitch_17
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 435
    goto :goto_0

    .line 458
    :pswitch_18
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 459
    goto :goto_0

    .line 442
    :pswitch_19
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 443
    goto :goto_0

    .line 426
    :pswitch_1a
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 427
    goto :goto_0

    .line 418
    :pswitch_1b
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 419
    nop

    .line 534
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JI)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # I

    .line 547
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 548
    long-to-int v0, p1

    .line 550
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    .line 665
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :pswitch_0
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 614
    goto/16 :goto_0

    .line 605
    :pswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 606
    goto/16 :goto_0

    .line 645
    :pswitch_2
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 646
    goto/16 :goto_0

    .line 637
    :pswitch_3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 638
    goto/16 :goto_0

    .line 661
    :pswitch_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 662
    goto/16 :goto_0

    .line 589
    :pswitch_5
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 590
    goto/16 :goto_0

    .line 653
    :pswitch_6
    if-eqz p3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 654
    goto/16 :goto_0

    .line 621
    :pswitch_7
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 622
    goto/16 :goto_0

    .line 629
    :pswitch_8
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 630
    goto/16 :goto_0

    .line 573
    :pswitch_9
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 574
    goto/16 :goto_0

    .line 597
    :pswitch_a
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 598
    goto :goto_0

    .line 581
    :pswitch_b
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 582
    goto :goto_0

    .line 565
    :pswitch_c
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 566
    goto :goto_0

    .line 557
    :pswitch_d
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 558
    goto :goto_0

    .line 609
    :pswitch_e
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 610
    goto :goto_0

    .line 601
    :pswitch_f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 602
    goto :goto_0

    .line 641
    :pswitch_10
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 642
    goto :goto_0

    .line 633
    :pswitch_11
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 634
    goto :goto_0

    .line 657
    :pswitch_12
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 658
    goto :goto_0

    .line 585
    :pswitch_13
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 586
    goto :goto_0

    .line 649
    :pswitch_14
    if-eqz p3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 650
    goto :goto_0

    .line 617
    :pswitch_15
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 618
    goto :goto_0

    .line 625
    :pswitch_16
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 626
    goto :goto_0

    .line 569
    :pswitch_17
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 570
    goto :goto_0

    .line 593
    :pswitch_18
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 594
    goto :goto_0

    .line 577
    :pswitch_19
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 578
    goto :goto_0

    .line 561
    :pswitch_1a
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 562
    goto :goto_0

    .line 553
    :pswitch_1b
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 554
    nop

    .line 669
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JJ)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # J

    .line 682
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 683
    long-to-int v0, p1

    .line 685
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    .line 800
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :pswitch_0
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 749
    goto/16 :goto_0

    .line 740
    :pswitch_1
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 741
    goto/16 :goto_0

    .line 780
    :pswitch_2
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 781
    goto/16 :goto_0

    .line 772
    :pswitch_3
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 773
    goto/16 :goto_0

    .line 796
    :pswitch_4
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 797
    goto/16 :goto_0

    .line 724
    :pswitch_5
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 725
    goto/16 :goto_0

    .line 788
    :pswitch_6
    cmp-long v1, p3, v4

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 789
    goto/16 :goto_0

    .line 756
    :pswitch_7
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 757
    goto/16 :goto_0

    .line 764
    :pswitch_8
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 765
    goto/16 :goto_0

    .line 708
    :pswitch_9
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 709
    goto/16 :goto_0

    .line 732
    :pswitch_a
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 733
    goto :goto_0

    .line 716
    :pswitch_b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 717
    goto :goto_0

    .line 700
    :pswitch_c
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 701
    goto :goto_0

    .line 692
    :pswitch_d
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 693
    goto :goto_0

    .line 744
    :pswitch_e
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 745
    goto :goto_0

    .line 736
    :pswitch_f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 737
    goto :goto_0

    .line 776
    :pswitch_10
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 777
    goto :goto_0

    .line 768
    :pswitch_11
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 769
    goto :goto_0

    .line 792
    :pswitch_12
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 793
    goto :goto_0

    .line 720
    :pswitch_13
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 721
    goto :goto_0

    .line 784
    :pswitch_14
    cmp-long v1, p3, v4

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 785
    goto :goto_0

    .line 752
    :pswitch_15
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 753
    goto :goto_0

    .line 760
    :pswitch_16
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 761
    goto :goto_0

    .line 704
    :pswitch_17
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 705
    goto :goto_0

    .line 728
    :pswitch_18
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 729
    goto :goto_0

    .line 712
    :pswitch_19
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 713
    goto :goto_0

    .line 696
    :pswitch_1a
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 697
    goto :goto_0

    .line 688
    :pswitch_1b
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 689
    nop

    .line 804
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JLjava/lang/String;)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 844
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 845
    long-to-int v0, p1

    .line 847
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x109

    if-eq v1, v2, :cond_2

    const/16 v2, 0x209

    if-eq v1, v2, :cond_1

    const/16 v2, 0x509

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 855
    goto :goto_1

    .line 850
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 851
    nop

    .line 862
    :goto_1
    return-void
.end method

.method public write(JZ)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z

    .line 815
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 816
    long-to-int v0, p1

    .line 818
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x108

    if-eq v1, v2, :cond_2

    const/16 v2, 0x208

    if-eq v1, v2, :cond_1

    const/16 v2, 0x508

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 829
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 826
    goto :goto_1

    .line 821
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 822
    nop

    .line 833
    :goto_1
    return-void
.end method

.method public write(J[B)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B

    .line 873
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 874
    long-to-int v0, p1

    .line 876
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    .line 895
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 883
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 884
    goto :goto_0

    .line 891
    :sswitch_1
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 892
    goto :goto_0

    .line 879
    :sswitch_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 880
    goto :goto_0

    .line 887
    :sswitch_3
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 888
    nop

    .line 899
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10b -> :sswitch_3
        0x10c -> :sswitch_2
        0x20b -> :sswitch_1
        0x20c -> :sswitch_0
        0x50b -> :sswitch_1
        0x50c -> :sswitch_0
    .end sparse-switch
.end method

.method public writeBool(JZ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1769
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1770
    const-wide v0, 0x10800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1772
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 1773
    return-void
.end method

.method public writeBytes(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1899
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1900
    const-wide v0, 0x10c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1902
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 1903
    return-void
.end method

.method public writeDouble(JD)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 941
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 942
    const-wide v0, 0x10100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 944
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 945
    return-void
.end method

.method public writeEnum(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1945
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1946
    const-wide v0, 0x10e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1948
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 1949
    return-void
.end method

.method public writeFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1514
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1515
    const-wide v0, 0x10700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1517
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 1518
    return-void
.end method

.method public writeFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1578
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1579
    const-wide v0, 0x10600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1581
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 1582
    return-void
.end method

.method public writeFloat(JF)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1006
    const-wide v0, 0x10200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1008
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 1009
    return-void
.end method

.method public writeInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1092
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1093
    const-wide v0, 0x10500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1095
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 1096
    return-void
.end method

.method public writeInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1170
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1171
    const-wide v0, 0x10300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1173
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 1174
    return-void
.end method

.method public writeObject(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2225
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2226
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2228
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 2229
    return-void
.end method

.method writeObjectImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .line 2232
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 2233
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2234
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2236
    :cond_0
    return-void
.end method

.method public writePackedBool(J[Z)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1808
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1809
    const-wide v0, 0x50800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1811
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1812
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 1814
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1817
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1819
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v4, p3, v1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1817
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1822
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedDouble(J[D)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 979
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 980
    const-wide v0, 0x50100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 982
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 983
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 984
    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 985
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 986
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 989
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedEnum(J[I)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1983
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1984
    const-wide v0, 0x50e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1986
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1987
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_3

    .line 1988
    const/4 v3, 0x0

    .line 1989
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1990
    aget v5, p3, v3

    .line 1991
    .local v5, "v":I
    if-ltz v5, :cond_1

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v6

    goto :goto_2

    :cond_1
    const/16 v6, 0xa

    :goto_2
    add-int/2addr v4, v6

    .line 1989
    .end local v5    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1993
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1994
    nop

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 1995
    aget v3, p3, v1

    invoke-direct {p0, v3}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1994
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1998
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_3
    return-void
.end method

.method public writePackedFixed32(J[I)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1552
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1553
    const-wide v0, 0x50700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1555
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1556
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 1557
    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1558
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1559
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1558
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1562
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedFixed64(J[J)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1616
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1617
    const-wide v0, 0x50600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1619
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1620
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 1621
    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1622
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1623
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1622
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1626
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedFloat(J[F)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1043
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1044
    const-wide v0, 0x50200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1046
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1047
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 1048
    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1049
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1050
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1053
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedInt32(J[I)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1139
    const-wide v0, 0x50500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1141
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1142
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_3

    .line 1143
    const/4 v3, 0x0

    .line 1144
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1145
    aget v5, p3, v3

    .line 1146
    .local v5, "v":I
    if-ltz v5, :cond_1

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v6

    goto :goto_2

    :cond_1
    const/16 v6, 0xa

    :goto_2
    add-int/2addr v4, v6

    .line 1144
    .end local v5    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1148
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1149
    nop

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 1150
    aget v3, p3, v1

    invoke-direct {p0, v3}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1149
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1153
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_3
    return-void
.end method

.method public writePackedInt64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1209
    const-wide v0, 0x50300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1211
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1212
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_2

    .line 1213
    const/4 v3, 0x0

    .line 1214
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1215
    aget-wide v5, p3, v3

    invoke-static {v5, v6}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v5

    add-int/2addr v4, v5

    .line 1214
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1217
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1218
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1219
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v1

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1222
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedSFixed32(J[I)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1679
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1680
    const-wide v0, 0x50f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1682
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1683
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 1684
    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1685
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1686
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1689
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedSFixed64(J[J)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1743
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1744
    const-wide v0, 0x51000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1746
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1747
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_1

    .line 1748
    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1749
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1750
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1749
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1753
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writePackedSInt32(J[I)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1415
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1416
    const-wide v0, 0x51100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1418
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1419
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_2

    .line 1420
    const/4 v3, 0x0

    .line 1421
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1422
    aget v5, p3, v3

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1424
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1425
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1426
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v3, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1429
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedSInt64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1484
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1485
    const-wide v0, 0x51200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1487
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1488
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_2

    .line 1489
    const/4 v3, 0x0

    .line 1490
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1491
    aget-wide v5, p3, v3

    invoke-static {v5, v6}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v5

    add-int/2addr v4, v5

    .line 1490
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1493
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1494
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1495
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v1

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1494
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1498
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedUInt32(J[I)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1277
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1278
    const-wide v0, 0x50d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1280
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1281
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_2

    .line 1282
    const/4 v3, 0x0

    .line 1283
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1284
    aget v5, p3, v3

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1283
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1286
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1287
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1288
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v3, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1291
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedUInt64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1346
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1347
    const-wide v0, 0x50400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1349
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1350
    .local v2, "N":I
    :goto_0
    if-lez v2, :cond_2

    .line 1351
    const/4 v3, 0x0

    .line 1352
    .local v3, "size":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "size":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1353
    aget-wide v5, p3, v3

    invoke-static {v5, v6}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v5

    add-int/2addr v4, v5

    .line 1352
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1355
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1356
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1357
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v1

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1356
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1360
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-void
.end method

.method public writeRepeatedBool(JZ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1790
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1791
    const-wide v0, 0x20800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1793
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 1794
    return-void
.end method

.method public writeRepeatedBytes(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1919
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1920
    const-wide v0, 0x20c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1922
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 1923
    return-void
.end method

.method public writeRepeatedDouble(JD)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 962
    const-wide v0, 0x20100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 964
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 965
    return-void
.end method

.method public writeRepeatedEnum(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1965
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1966
    const-wide v0, 0x20e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1968
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 1969
    return-void
.end method

.method public writeRepeatedFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1534
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1535
    const-wide v0, 0x20700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1537
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 1538
    return-void
.end method

.method public writeRepeatedFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1599
    const-wide v0, 0x20600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1601
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 1602
    return-void
.end method

.method public writeRepeatedFloat(JF)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1026
    const-wide v0, 0x20200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1028
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 1029
    return-void
.end method

.method public writeRepeatedInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1117
    const-wide v0, 0x20500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1119
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 1120
    return-void
.end method

.method public writeRepeatedInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1191
    const-wide v0, 0x20300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1193
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 1194
    return-void
.end method

.method public writeRepeatedObject(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2245
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2246
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2248
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 2249
    return-void
.end method

.method writeRepeatedObjectImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .line 2252
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2253
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2254
    return-void
.end method

.method public writeRepeatedSFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1661
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1662
    const-wide v0, 0x20f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1664
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 1665
    return-void
.end method

.method public writeRepeatedSFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1725
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1726
    const-wide v0, 0x21000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1728
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 1729
    return-void
.end method

.method public writeRepeatedSInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1397
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1398
    const-wide v0, 0x21100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1400
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 1401
    return-void
.end method

.method public writeRepeatedSInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1466
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1467
    const-wide v0, 0x21200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1469
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 1470
    return-void
.end method

.method public writeRepeatedString(JLjava/lang/String;)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1857
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1858
    const-wide v0, 0x20900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1860
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 1861
    return-void
.end method

.method public writeRepeatedUInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1259
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1260
    const-wide v0, 0x20d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1262
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 1263
    return-void
.end method

.method public writeRepeatedUInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1329
    const-wide v0, 0x20400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1331
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 1332
    return-void
.end method

.method public writeSFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1642
    const-wide v0, 0x10f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1644
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 1645
    return-void
.end method

.method public writeSFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1705
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1706
    const-wide v0, 0x11000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1708
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 1709
    return-void
.end method

.method public writeSInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1377
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1378
    const-wide v0, 0x11100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1380
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 1381
    return-void
.end method

.method public writeSInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1447
    const-wide v0, 0x11200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1449
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 1450
    return-void
.end method

.method public writeString(JLjava/lang/String;)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1838
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1839
    const-wide v0, 0x10900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1841
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 1842
    return-void
.end method

.method public writeTag(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "wireType"    # I

    .line 2409
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2410
    return-void
.end method

.method public writeUInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1239
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1240
    const-wide v0, 0x10d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1242
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 1243
    return-void
.end method

.method public writeUInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1309
    const-wide v0, 0x10400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1311
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 1312
    return-void
.end method
