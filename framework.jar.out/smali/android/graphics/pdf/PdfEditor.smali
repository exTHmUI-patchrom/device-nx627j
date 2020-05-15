.class public final Landroid/graphics/pdf/PdfEditor;
.super Ljava/lang/Object;
.source "PdfEditor.java"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private mNativeDocument:J

.field private mPageCount:I


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 70
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 77
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .local v0, "size":J
    nop

    .line 79
    nop

    .line 81
    iput-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 83
    sget-object v4, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v4

    .line 84
    :try_start_1
    iget-object v5, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v5, v0, v1}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    iget-wide v5, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v5, v6}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    move-result v5

    iput v5, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    nop

    .line 92
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    iget-object v2, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 95
    return-void

    .line 87
    :catch_0
    move-exception v5

    .line 88
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    .line 89
    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    .line 90
    throw v5

    .line 92
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 78
    .end local v0    # "size":J
    :catch_1
    move-exception v0

    .line 79
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file descriptor not seekable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "ee":Landroid/system/ErrnoException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doClose()V
    .locals 6

    .line 290
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 301
    :cond_1
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 302
    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native nativeGetPageSize(JILandroid/graphics/Point;)V
.end method

.method private static native nativeOpen(IJ)J
.end method

.method private static native nativeRemovePage(JI)I
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private static native nativeSetPageCropBox(JILandroid/graphics/Rect;)V
.end method

.method private static native nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
.end method

.method private static native nativeSetTransformAndClip(JIJIIII)V
.end method

.method private static native nativeWrite(JI)V
.end method

.method private throwIfClosed()V
    .locals 2

    .line 305
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 308
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cropBox"    # Landroid/graphics/Rect;

    .line 347
    if-eqz p1, :cond_0

    .line 350
    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "mediaBox"    # Landroid/graphics/Rect;

    .line 335
    if-eqz p1, :cond_0

    .line 338
    return-void

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 317
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix must be afine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    :goto_0
    return-void
.end method

.method private throwIfOutCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outCropBox"    # Landroid/graphics/Rect;

    .line 341
    if-eqz p1, :cond_0

    .line 344
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outCropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outMediaBox"    # Landroid/graphics/Rect;

    .line 329
    if-eqz p1, :cond_0

    .line 332
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outMediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfOutSizeNull(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 323
    if-eqz p1, :cond_0

    .line 326
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outSize cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .line 311
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    if-ge p1, v0, :cond_0

    .line 314
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 272
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 273
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    .line 274
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 279
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 283
    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getPageCount()I
    .locals 1

    .line 103
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 104
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    return v0
.end method

.method public getPageCropBox(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "outCropBox"    # Landroid/graphics/Rect;

    .line 209
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 210
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    .line 211
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 213
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageMediaBox(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "outMediaBox"    # Landroid/graphics/Rect;

    .line 177
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 178
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    .line 179
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 181
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageSize(ILandroid/graphics/Point;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 161
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 162
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    .line 163
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 165
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePage(I)V
    .locals 3
    .param p1, "pageIndex"    # I

    .line 113
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 114
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 116
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    move-result v1

    iput v1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPageCropBox(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "cropBox"    # Landroid/graphics/Rect;

    .line 225
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 226
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    .line 227
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 229
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V

    .line 231
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPageMediaBox(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "mediaBox"    # Landroid/graphics/Rect;

    .line 193
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 194
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    .line 195
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 197
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "pageIndex"    # I
    .param p2, "transform"    # Landroid/graphics/Matrix;
    .param p3, "clip"    # Landroid/graphics/Rect;

    .line 132
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 133
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 134
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    .line 135
    if-nez p2, :cond_0

    .line 136
    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 138
    :cond_0
    if-nez p3, :cond_1

    .line 139
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 140
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    .line 142
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    iget-wide v5, p2, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    move v4, p1

    invoke-static/range {v2 .. v10}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    .line 145
    monitor-exit v1

    .line 146
    .end local v0    # "size":Landroid/graphics/Point;
    goto :goto_0

    .line 145
    .restart local v0    # "size":Landroid/graphics/Point;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 147
    .end local v0    # "size":Landroid/graphics/Point;
    :cond_1
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_1
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move v3, p1

    invoke-static/range {v1 .. v9}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    .line 150
    monitor-exit v0

    .line 152
    :goto_0
    return-void

    .line 150
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public shouldScaleForPrinting()Z
    .locals 3

    .line 240
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 242
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 259
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    :try_start_1
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V

    .line 261
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 264
    nop

    .line 265
    return-void

    .line 261
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :catchall_1
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method
