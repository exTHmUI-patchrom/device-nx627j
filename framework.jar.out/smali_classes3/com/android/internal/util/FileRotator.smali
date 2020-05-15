.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Writer;,
        Lcom/android/internal/util/FileRotator$Reader;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final mBasePath:Ljava/io/File;

.field private final mDeleteAgeMillis:J

.field private final mPrefix:Ljava/lang/String;

.field private final mRotateAgeMillis:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 15
    .param p1, "basePath"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    move-object v0, p0

    .line 98
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 100
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    .line 101
    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    .line 102
    move-wide/from16 v3, p5

    iput-wide v3, v0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    .line 105
    iget-object v5, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 108
    iget-object v5, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v9, v5, v8

    .line 109
    .local v9, "name":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .end local v9    # "name":Ljava/lang/String;
    goto :goto_1

    .line 111
    .restart local v9    # "name":Ljava/lang/String;
    :cond_0
    const-string v10, ".backup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 114
    new-instance v10, Ljava/io/File;

    iget-object v11, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v10, "backupFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    iget-object v12, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 116
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, ".backup"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v9, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 121
    .end local v10    # "backupFile":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    goto :goto_1

    :cond_1
    const-string v10, ".no_backup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 124
    new-instance v10, Ljava/io/File;

    iget-object v11, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v10, "noBackupFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    iget-object v12, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 126
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, ".no_backup"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v9, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .restart local v11    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 130
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 108
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "noBackupFile":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 133
    :cond_3
    return-void
.end method

.method private getActiveName(J)Ljava/lang/String;
    .locals 10
    .param p1, "currentTimeMillis"    # J

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "oldestActiveName":Ljava/lang/String;
    const-wide v1, 0x7fffffffffffffffL

    .line 308
    .local v1, "oldestActiveStart":J
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v4, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 309
    .local v3, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v4, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 310
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .end local v7    # "name":Ljava/lang/String;
    goto :goto_1

    .line 313
    .restart local v7    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, p1

    if-gez v8, :cond_1

    iget-wide v8, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, v1

    if-gez v8, :cond_1

    .line 315
    move-object v0, v7

    .line 316
    iget-wide v1, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 309
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 320
    :cond_2
    if-eqz v0, :cond_3

    .line 321
    return-object v0

    .line 324
    :cond_3
    iput-wide p1, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 325
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 326
    invoke-virtual {v3}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 372
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 392
    move-object v0, p0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 394
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    .local v0, "file":Ljava/io/File;
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 245
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 252
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    .line 258
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 259
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 260
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 265
    .end local v1    # "backupFile":Ljava/io/File;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".no_backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .restart local v1    # "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 269
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    nop

    .line 280
    :goto_0
    return-void

    .line 273
    :catch_1
    move-exception v2

    .line 275
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 277
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 380
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 382
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 383
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 386
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 387
    nop

    .line 388
    return-void

    .line 385
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 386
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 211
    return-void
.end method

.method public deleteAll()V
    .locals 7

    .line 139
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 141
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 140
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method public dumpAll(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v1, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 156
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 158
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 160
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    .local v8, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v8, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 166
    nop

    .line 168
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 165
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    :cond_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_1
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public maybeRotate(J)V
    .locals 13
    .param p1, "currentTimeMillis"    # J

    .line 335
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v0, p1, v0

    .line 336
    .local v0, "rotateBefore":J
    iget-wide v2, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v2, p1, v2

    .line 338
    .local v2, "deleteBefore":J
    new-instance v4, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 339
    .local v4, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "baseFiles":[Ljava/lang/String;
    if-nez v5, :cond_0

    .line 341
    return-void

    .line 344
    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 345
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .end local v8    # "name":Ljava/lang/String;
    goto :goto_1

    .line 347
    .restart local v8    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 348
    iget-wide v9, v4, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v9, v9, v0

    if-gtz v9, :cond_3

    .line 352
    iput-wide p1, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 354
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v10, "destFile":Ljava/io/File;
    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 357
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "destFile":Ljava/io/File;
    goto :goto_1

    .line 358
    :cond_2
    iget-wide v9, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v9, v9, v2

    if-gtz v9, :cond_3

    .line 362
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 344
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 366
    :cond_4
    return-void
.end method

.method public readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .locals 7
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "matchStartMillis"    # J
    .param p4, "matchEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 289
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v4    # "name":Ljava/lang/String;
    goto :goto_1

    .line 292
    .restart local v4    # "name":Ljava/lang/String;
    :cond_0
    iget-wide v5, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v5, v5, p4

    if-gtz v5, :cond_1

    iget-wide v5, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v5, p2, v5

    if-gtz v5, :cond_1

    .line 295
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .local v5, "file":Ljava/io/File;
    invoke-static {v5, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 288
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :cond_2
    return-void
.end method

.method public rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .locals 1
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "activeName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 220
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v4    # "name":Ljava/lang/String;
    goto :goto_1

    .line 223
    .restart local v4    # "name":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 219
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method
