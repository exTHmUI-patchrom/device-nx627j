.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;,
        Lcom/android/internal/backup/LocalTransport$KVOperation;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_BACKUP_SIZE_QUOTA:J = 0x1900000L

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field private static final KEY_VALUE_BACKUP_SIZE_QUOTA:J = 0x500000L

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullBackupSize:J

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private final mParameters:Lcom/android/internal/backup/LocalTransportParameters;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 563
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    return-void

    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/backup/LocalTransportParameters;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parameters"    # Lcom/android/internal/backup/LocalTransportParameters;

    .line 110
    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 111
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    .line 113
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 114
    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 722
    .local v0, "allFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 727
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v1, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 729
    .local v4, "f":Ljava/io/File;
    new-instance v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v5, v4}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 732
    return-object v1

    .line 723
    .end local v1    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 5
    .param p1, "dirname"    # Ljava/io/File;

    .line 374
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 375
    .local v0, "contents":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 376
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 377
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    invoke-direct {p0, v3}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 382
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 376
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method

.method private makeDataDirs()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 107
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 108
    return-void
.end method

.method private parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/backup/LocalTransport$KVOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 324
    .local v1, "changeSet":Landroid/app/backup/BackupDataInput;
    :goto_0
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 327
    .local v3, "base64Key":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 333
    .local v4, "dataSize":I
    if-ltz v4, :cond_0

    new-array v5, v4, [B

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 334
    .local v5, "buf":[B
    :goto_1
    if-ltz v4, :cond_1

    .line 335
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 337
    :cond_1
    new-instance v6, Lcom/android/internal/backup/LocalTransport$KVOperation;

    invoke-direct {v6, p0, v3, v5}, Lcom/android/internal/backup/LocalTransport$KVOperation;-><init>(Lcom/android/internal/backup/LocalTransport;Ljava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "base64Key":Ljava/lang/String;
    .end local v4    # "dataSize":I
    .end local v5    # "buf":[B
    goto :goto_0

    .line 339
    :cond_2
    return-object v0
.end method

.method private parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I
    .locals 9
    .param p1, "packageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 345
    .local p2, "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 346
    .local v0, "totalSize":I
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "elements":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 351
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 352
    .local v4, "file":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v5, "element":Ljava/io/File;
    move-object v6, v4

    .line 354
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    .line 355
    .local v7, "size":I
    add-int/2addr v0, v7

    .line 359
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "element":Ljava/io/File;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "size":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_0
    return v0
.end method

.method private resetFullRestoreState()V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 750
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 751
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 752
    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 424
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 426
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 428
    :cond_0
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    .line 429
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 438
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 439
    goto :goto_0

    .line 437
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 438
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    throw v1

    .line 431
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, -0x3e8

    .line 437
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 438
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 435
    return v2

    .line 441
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 2

    .line 843
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 848
    return v0

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelFullBackup()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 555
    .local v0, "archive":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 559
    :cond_0
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 3
    .param p1, "size"    # J

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "result":I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 458
    const/16 v0, -0x3ea

    goto :goto_0

    .line 459
    :cond_0
    const-wide/32 v1, 0x1900000

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 460
    const/16 v0, -0x3ed

    .line 462
    :cond_1
    :goto_0
    nop

    .line 467
    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 391
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    .local v0, "packageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 393
    .local v1, "fileset":[Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 394
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 395
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 394
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 400
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 401
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 402
    .local v3, "tarballs":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 403
    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 404
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 403
    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 406
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 409
    :cond_3
    return v2
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    .line 415
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .line 738
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 741
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 742
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 11

    .line 567
    sget-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    .line 568
    .local v0, "existing":[J
    const/4 v1, 0x0

    .line 571
    .local v1, "num":I
    sget-object v2, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .end local v1    # "num":I
    .local v5, "num":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v6, v2, v1

    .line 572
    .local v6, "token":J
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 573
    add-int/lit8 v8, v5, 0x1

    .local v8, "num":I
    aput-wide v6, v0, v5

    .line 571
    .end local v5    # "num":I
    .end local v6    # "token":J
    move v5, v8

    .end local v8    # "num":I
    .restart local v5    # "num":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    :cond_1
    add-int/lit8 v1, v5, 0x1

    .restart local v1    # "num":I
    const-wide/16 v2, 0x1

    aput-wide v2, v0, v5

    .line 579
    .end local v5    # "num":I
    new-array v2, v1, [Landroid/app/backup/RestoreSet;

    .line 580
    .local v2, "available":[Landroid/app/backup/RestoreSet;
    nop

    .local v4, "i":I
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 581
    new-instance v4, Landroid/app/backup/RestoreSet;

    const-string v5, "Local disk image"

    const-string v6, "flash"

    aget-wide v7, v0, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v4, v2, v3

    .line 580
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 583
    .end local v4    # "i":I
    :cond_2
    return-object v2
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z

    .line 853
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1900000

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x500000

    :goto_0
    return-wide v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .line 589
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .line 778
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 783
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 786
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 788
    .local v1, "dataset":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    nop

    .line 795
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 796
    const/16 v2, 0x800

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 796
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "dataset":Ljava/io/File;
    goto :goto_0

    .line 789
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "dataset":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 792
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read archive for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v3, -0x3ea

    return v3

    .line 801
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "dataset":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 802
    .local v0, "nRead":I
    if-gez v0, :cond_1

    .line 804
    const/4 v0, -0x1

    goto :goto_1

    .line 805
    :cond_1
    if-nez v0, :cond_2

    .line 809
    const-string v1, "LocalTransport"

    const-string/jumbo v2, "read() of archive file returned 0; treating as EOF"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, -0x1

    goto :goto_1

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    :goto_1
    nop

    .line 819
    nop

    .line 825
    return v0

    .line 819
    .end local v0    # "nRead":I
    :catchall_0
    move-exception v0

    throw v0

    .line 817
    :catch_1
    move-exception v0

    .line 818
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x3e8

    return v1

    .line 779
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asked for full restore data for non-stream package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getParameters()Lcom/android/internal/backup/LocalTransportParameters;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    return-object v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 11
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .line 658
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    .line 659
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-ltz v0, :cond_3

    .line 660
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 663
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 671
    .local v0, "packageDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    .line 672
    .local v1, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    const/16 v2, -0x3e8

    if-nez v1, :cond_0

    .line 673
    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No keys for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return v2

    .line 679
    :cond_0
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 681
    .local v3, "out":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    .line 682
    .local v5, "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    iget-object v6, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    .line 683
    .local v6, "f":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    .line 686
    .local v8, "size":I
    new-array v9, v8, [B

    .line 687
    .local v9, "buf":[B
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 689
    iget-object v10, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 690
    invoke-virtual {v3, v9, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    .end local v8    # "size":I
    .end local v9    # "buf":[B
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 693
    nop

    .line 694
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 692
    .restart local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 695
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "in":Ljava/io/FileInputStream;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 696
    :catch_0
    move-exception v4

    .line 697
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "LocalTransport"

    const-string v6, "Unable to read backup records"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    return v2

    .line 661
    .end local v0    # "packageDir":Ljava/io/File;
    .end local v1    # "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    .end local v3    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "nextRestorePackage not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRestore not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransportFlags()I
    .locals 2

    .line 154
    invoke-super {p0}, Landroid/app/backup/BackupTransport;->getTransportFlags()I

    move-result v0

    .line 157
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {v1}, Lcom/android/internal/backup/LocalTransportParameters;->isFakeEncryptionFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 160
    :cond_0
    return v0
.end method

.method public initializeDevice()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 8

    .line 610
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "found":Z
    :goto_0
    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 614
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 618
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "contents":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 624
    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 625
    const/4 v0, 0x1

    .line 628
    :cond_0
    if-nez v0, :cond_1

    .line 630
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 631
    .local v2, "maybeFullData":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 636
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 637
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 638
    const/4 v0, 0x1

    .line 642
    .end local v2    # "maybeFullData":Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_2

    .line 643
    new-instance v2, Landroid/app/backup/RestoreDescription;

    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v2, v1, v4}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 650
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "contents":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 653
    :cond_3
    sget-object v1, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    return-object v1

    .line 610
    .end local v0    # "found":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRestore not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/backup/LocalTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 21
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 195
    and-int/lit8 v0, p3, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 196
    .local v5, "isIncremental":Z
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    .line 198
    .local v6, "isNonIncremental":Z
    if-eqz v5, :cond_2

    .line 199
    const-string v0, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing incremental backup for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 200
    :cond_2
    if-eqz v6, :cond_3

    .line 201
    const-string v0, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing non-incremental backup for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    :cond_3
    const-string v0, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing backup for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 218
    .local v7, "packageDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v0

    xor-int/2addr v0, v3

    move v3, v0

    .line 220
    .local v3, "hasDataForPackage":Z
    if-eqz v5, :cond_6

    .line 221
    iget-object v0, v1, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransportParameters;->isNonIncrementalOnly()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v3, :cond_6

    .line 222
    :cond_4
    iget-object v0, v1, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransportParameters;->isNonIncrementalOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const-string v0, "LocalTransport"

    const-string v4, "Transport is in non-incremental only mode."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 226
    :cond_5
    const-string v0, "LocalTransport"

    const-string v4, "Requested incremental, but transport currently stores no data for the package, requesting non-incremental retry."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_3
    const/16 v0, -0x3ee

    return v0

    .line 233
    :cond_6
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    .line 234
    const-string v0, "LocalTransport"

    const-string v8, "Requested non-incremental, deleting existing data."

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/backup/LocalTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    .line 236
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 245
    :cond_7
    move-object/from16 v9, p2

    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/internal/backup/LocalTransport;->parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v10, v0

    .line 250
    .local v10, "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    nop

    .line 249
    nop

    .line 255
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    .line 256
    .local v11, "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1, v7, v11}, Lcom/android/internal/backup/LocalTransport;->parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I

    move-result v12

    .line 267
    .local v12, "totalSize":I
    move v0, v12

    .line 268
    .local v0, "updatedSize":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    .end local v0    # "updatedSize":I
    .local v14, "updatedSize":I
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/LocalTransport$KVOperation;

    .line 270
    .local v0, "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    iget-object v8, v0, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 271
    .local v8, "curSize":Ljava/lang/Integer;
    if-eqz v8, :cond_8

    .line 272
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v14, v15

    .line 279
    :cond_8
    iget-object v4, v0, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v4, :cond_9

    .line 280
    iget-object v4, v0, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    array-length v4, v4

    add-int/2addr v14, v4

    .line 286
    .end local v0    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .end local v8    # "curSize":Ljava/lang/Integer;
    :cond_9
    goto :goto_4

    .line 289
    :cond_a
    int-to-long v0, v14

    const-wide/32 v16, 0x500000

    cmp-long v0, v0, v16

    if-lez v0, :cond_b

    .line 294
    const/16 v0, -0x3ed

    return v0

    .line 299
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/LocalTransport$KVOperation;

    .line 300
    .local v1, "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    .local v4, "element":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 307
    iget-object v8, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v8, :cond_d

    .line 308
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 309
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v13, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v8, v13, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    .end local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .local v19, "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 313
    .end local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 310
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_7

    .line 308
    :catch_0
    move-exception v0

    move-object v13, v0

    goto :goto_6

    .line 310
    .end local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .restart local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v1

    move-object v1, v0

    const/4 v13, 0x0

    .end local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .restart local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    goto :goto_7

    .line 308
    .end local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .restart local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :catch_1
    move-exception v0

    move-object/from16 v19, v1

    move-object v13, v0

    .end local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .restart local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :goto_6
    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 310
    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_7
    if-eqz v13, :cond_c

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    goto :goto_9

    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v13, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :goto_8
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .restart local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :catch_4
    move-exception v0

    move-object/from16 v19, v1

    .line 311
    .end local v1    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :goto_9
    const-string v1, "LocalTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to update key file "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v1, -0x3e8

    return v1

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "element":Ljava/io/File;
    .end local v19    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :cond_d
    move-object/from16 v18, v0

    .line 299
    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v2, p1

    goto :goto_5

    .line 316
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 246
    .end local v10    # "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    .end local v11    # "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "totalSize":I
    .end local v14    # "updatedSize":I
    :catch_5
    move-exception v0

    move-object v1, v0

    .line 248
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "LocalTransport"

    const-string v2, "Exception reading backup input"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    const/16 v1, -0x3e8

    return v1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 4
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .line 472
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    const/16 v1, -0x3e8

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "LocalTransport"

    const-string v2, "Attempt to initiate full backup while one is in progress"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v1

    .line 485
    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    .line 486
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 487
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    nop

    .line 493
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 494
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 496
    const/4 v0, 0x0

    return v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "LocalTransport"

    const-string v3, "Unable to process socket for full backup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v1
.end method

.method public requestBackupTime()J
    .locals 2

    .line 166
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    .line 450
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 6
    .param p1, "numBytes"    # I

    .line 501
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    const/16 v1, -0x3e8

    if-nez v0, :cond_0

    .line 502
    const-string v0, "LocalTransport"

    const-string v2, "Attempted sendBackupData before performFullBackup"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v1

    .line 506
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    .line 507
    iget-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    const-wide/32 v4, 0x1900000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 508
    const/16 v0, -0x3ed

    return v0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 512
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_3

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 519
    .local v0, "tarball":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "tarball":Ljava/io/File;
    move-object v0, v2

    .line 522
    .local v0, "tarstream":Ljava/io/FileOutputStream;
    nop

    .line 521
    nop

    .line 523
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .end local v0    # "tarstream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/io/FileNotFoundException;
    return v1

    .line 526
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_0
    move v0, p1

    .line 527
    .local v0, "bytesLeft":I
    :goto_1
    const/4 v2, 0x0

    if-lez v0, :cond_5

    .line 529
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    invoke-virtual {v3, v4, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 530
    .local v3, "nRead":I
    if-gez v3, :cond_4

    .line 532
    const-string v2, "LocalTransport"

    const-string v4, "Unexpected EOD; failing backup"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v1

    .line 535
    :cond_4
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    invoke-virtual {v4, v5, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    sub-int/2addr v0, v3

    .line 540
    .end local v3    # "nRead":I
    goto :goto_1

    .line 537
    :catch_1
    move-exception v2

    .line 538
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error handling backup data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v1

    .line 545
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    return v2
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .line 596
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 597
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 598
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    .line 599
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 600
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .line 149
    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
