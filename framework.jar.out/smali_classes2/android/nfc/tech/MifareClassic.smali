.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    .line 87
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    .line 93
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 150
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/nfc/tech/NfcA;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 154
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v2

    const/16 v3, 0x800

    const/16 v4, 0x400

    const/4 v5, 0x1

    const/16 v6, 0x1000

    sparse-switch v2, :sswitch_data_0

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :sswitch_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 200
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 201
    goto :goto_0

    .line 193
    :sswitch_1
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 194
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 196
    goto :goto_0

    .line 188
    :sswitch_2
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 189
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 190
    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 191
    goto :goto_0

    .line 183
    :sswitch_3
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 184
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 185
    iput-boolean v5, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 186
    goto :goto_0

    .line 179
    :sswitch_4
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 180
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 181
    goto :goto_0

    .line 175
    :sswitch_5
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 176
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 177
    goto :goto_0

    .line 170
    :sswitch_6
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 171
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 173
    goto :goto_0

    .line 165
    :sswitch_7
    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 166
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 168
    goto :goto_0

    .line 161
    :sswitch_8
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 162
    const/16 v1, 0x140

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 163
    goto :goto_0

    .line 157
    :sswitch_9
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 158
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 159
    nop

    .line 208
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x28 -> :sswitch_3
        0x38 -> :sswitch_2
        0x88 -> :sswitch_1
        0x98 -> :sswitch_0
        0xb8 -> :sswitch_0
    .end sparse-switch
.end method

.method private authenticate(I[BZ)Z
    .locals 7
    .param p1, "sector"    # I
    .param p2, "key"    # [B
    .param p3, "keyA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 377
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 379
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 382
    .local v0, "cmd":[B
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 383
    const/16 v2, 0x60

    aput-byte v2, v0, v1

    goto :goto_0

    .line 385
    :cond_0
    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 391
    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 394
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    .line 395
    .local v2, "uid":[B
    array-length v4, v2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    invoke-static {v2, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 398
    const/4 v4, 0x6

    invoke-static {p2, v1, v0, v4, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 401
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v4
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 402
    return v3

    .line 408
    :cond_1
    goto :goto_1

    .line 406
    :catch_0
    move-exception v3

    .line 409
    :goto_1
    return v1

    .line 404
    :catch_1
    move-exception v1

    .line 405
    .local v1, "e":Landroid/nfc/TagLostException;
    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 2
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 138
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 140
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private static validateBlock(I)V
    .locals 3
    .param p0, "block"    # I

    .line 649
    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    .line 652
    return-void

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateSector(I)V
    .locals 3
    .param p0, "sector"    # I

    .line 642
    if-ltz p0, :cond_0

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    .line 645
    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValueOperand(I)V
    .locals 2
    .param p0, "value"    # I

    .line 655
    if-ltz p0, :cond_0

    .line 658
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value operand negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .locals 1
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1
    .param p1, "sectorIndex"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public blockToSector(I)I
    .locals 2
    .param p1, "blockIndex"    # I

    .line 297
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 299
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 300
    div-int/lit8 v0, p1, 0x4

    return v0

    .line 302
    :cond_0
    const/16 v0, 0x20

    add-int/lit8 v1, p1, -0x80

    div-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public decrement(II)V
    .locals 3
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 507
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 508
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 510
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 511
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 512
    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 513
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 514
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 517
    return-void
.end method

.method public getBlockCount()I
    .locals 1

    .line 269
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .locals 1
    .param p1, "sectorIndex"    # I

    .line 280
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 282
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 283
    const/4 v0, 0x4

    return v0

    .line 285
    :cond_0
    const/16 v0, 0x10

    return v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .line 590
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSectorCount()I
    .locals 2

    .line 249
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    const/16 v1, 0x140

    if-eq v0, v1, :cond_3

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 259
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_0
    const/16 v0, 0x28

    return v0

    .line 253
    :cond_1
    const/16 v0, 0x20

    return v0

    .line 251
    :cond_2
    const/16 v0, 0x10

    return v0

    .line 257
    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .line 627
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    const/4 v1, 0x0

    return v1
.end method

.method public getType()I
    .locals 1

    .line 219
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .locals 3
    .param p1, "blockIndex"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 479
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 480
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 482
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 483
    .local v0, "cmd":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 484
    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 488
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 489
    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 428
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 430
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 431
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public restore(I)V
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 556
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 558
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 560
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 561
    return-void
.end method

.method public sectorToBlock(I)I
    .locals 2
    .param p1, "sectorIndex"    # I

    .line 314
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 315
    mul-int/lit8 v0, p1, 0x4

    return v0

    .line 317
    :cond_0
    const/16 v0, 0x80

    add-int/lit8 v1, p1, -0x20

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public setTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 609
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    .line 610
    .local v0, "err":I
    if-nez v0, :cond_0

    .line 615
    .end local v0    # "err":I
    goto :goto_0

    .line 611
    .restart local v0    # "err":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v0    # "err":I
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public transfer(I)V
    .locals 4
    .param p1, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 534
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 536
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 538
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 539
    return-void
.end method

.method public writeBlock(I[B)V
    .locals 5
    .param p1, "blockIndex"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 450
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 451
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 455
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 456
    .local v0, "cmd":[B
    const/16 v2, -0x60

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 457
    const/4 v2, 0x1

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 458
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 460
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    .line 461
    return-void

    .line 452
    .end local v0    # "cmd":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must write 16-bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
