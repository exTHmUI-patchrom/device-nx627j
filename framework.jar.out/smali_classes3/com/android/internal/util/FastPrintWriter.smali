.class public Lcom/android/internal/util/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FastPrintWriter$DummyWriter;
    }
.end annotation


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 1
    .param p1, "pr"    # Landroid/util/Printer;

    .line 215
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .locals 3
    .param p1, "pr"    # Landroid/util/Printer;
    .param p2, "bufferLen"    # I

    .line 232
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$1;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 233
    if-eqz p1, :cond_0

    .line 236
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 237
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 238
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 239
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 240
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 241
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 242
    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 243
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 245
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 81
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .line 99
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    .line 120
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$1;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 121
    if-eqz p1, :cond_0

    .line 124
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 125
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 126
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 127
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 128
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 129
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 130
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 131
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 133
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;

    .line 150
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .line 168
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    .line 189
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$1;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 190
    if-eqz p1, :cond_0

    .line 193
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 194
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 195
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 196
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 197
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 198
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 199
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 200
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 202
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private appendLocked(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 299
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 301
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    .line 304
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 305
    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 309
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    .line 310
    add-int v1, p2, p3

    .line 311
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 312
    add-int v2, p2, v0

    .line 313
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 314
    move p2, v2

    .line 315
    .end local v2    # "next":I
    goto :goto_0

    .line 316
    :cond_1
    return-void

    .line 318
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 319
    .local v1, "pos":I
    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 321
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 323
    :cond_3
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 324
    add-int v2, v1, p3

    iput v2, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 325
    return-void
.end method

.method private appendLocked([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 329
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    .line 330
    add-int v1, p2, p3

    .line 331
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 332
    add-int v2, p2, v0

    .line 333
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    .line 334
    move p2, v2

    .line 335
    .end local v2    # "next":I
    goto :goto_0

    .line 336
    :cond_1
    return-void

    .line 338
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 339
    .local v1, "pos":I
    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 340
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 341
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    add-int v2, v1, p3

    iput v2, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 345
    return-void
.end method

.method private flushBytesLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v1, v0

    .local v1, "position":I
    if-lez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 352
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 356
    .end local v1    # "position":I
    :cond_0
    return-void
.end method

.method private flushLocked()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lez v0, :cond_9

    .line 361
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-static {v0, v1, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 363
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 364
    .local v3, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v4, :cond_1

    .line 365
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_0

    .line 367
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 369
    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v5, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 370
    goto :goto_0

    .line 366
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v2, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 376
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 378
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v0, :cond_4

    .line 379
    iget-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_8

    .line 380
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_2

    .line 384
    :cond_4
    const/4 v0, 0x0

    .line 385
    .local v0, "nonEolOff":I
    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 386
    .local v3, "sepLen":I
    iget v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-ge v3, v4, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 387
    .local v4, "len":I
    :goto_1
    if-ge v0, v4, :cond_6

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v0

    aget-char v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 388
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    sub-int/2addr v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_6

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    :cond_6
    iget v2, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lt v0, v2, :cond_7

    .line 392
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string v5, ""

    invoke-interface {v2, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 394
    :cond_7
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v7, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v1, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 397
    .end local v0    # "nonEolOff":I
    .end local v3    # "sepLen":I
    .end local v4    # "len":I
    :cond_8
    :goto_2
    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 399
    :cond_9
    return-void
.end method

.method private final initDefaultEncoder()V
    .locals 2

    .line 292
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 293
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 294
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 295
    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .locals 2
    .param p1, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 249
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    nop

    .line 253
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 254
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 255
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 695
    if-nez p1, :cond_0

    .line 696
    const-string p1, "null"

    .line 698
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    .line 700
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public checkError()Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 267
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    monitor-exit v0

    return v1

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected clearError()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 430
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_1
    :goto_0
    goto :goto_1

    .line 439
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 439
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 411
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_1
    :goto_0
    goto :goto_1

    .line 422
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 422
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public print(C)V
    .locals 4
    .param p1, "ch"    # C

    .line 470
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    goto :goto_0

    .line 477
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 477
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 478
    return-void

    .line 477
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public print(I)V
    .locals 1
    .param p1, "inum"    # I

    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 513
    :goto_0
    return-void
.end method

.method public print(J)V
    .locals 2
    .param p1, "lnum"    # J

    .line 517
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 518
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 522
    :goto_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 492
    if-nez p1, :cond_0

    .line 493
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    goto :goto_0

    .line 502
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 502
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public print([C)V
    .locals 4
    .param p1, "charArray"    # [C

    .line 451
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    goto :goto_0

    .line 458
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 458
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public println()V
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 531
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    goto :goto_0

    .line 538
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 538
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public println(C)V
    .locals 0
    .param p1, "c"    # C

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 575
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "inum"    # I

    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 548
    :goto_0
    return-void
.end method

.method public println(J)V
    .locals 2
    .param p1, "lnum"    # J

    .line 552
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 553
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    .line 557
    :goto_0
    return-void
.end method

.method public println([C)V
    .locals 0
    .param p1, "chars"    # [C

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 566
    return-void
.end method

.method protected setError()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    .line 288
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneChar"    # I

    .line 618
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    int-to-char v1, p1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    goto :goto_0

    .line 625
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 625
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    goto :goto_0

    .line 643
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 639
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 643
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 662
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    goto :goto_0

    .line 669
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 669
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 670
    return-void

    .line 669
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 596
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    goto :goto_0

    .line 603
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 603
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
