.class public Lcom/android/internal/content/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/PackageHelper$TestableInterface;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final RECOMMEND_FAILED_VERSION_DOWNGRADE:I = -0x7

.field public static final RECOMMEND_INSTALL_EPHEMERAL:I = 0x3

.field public static final RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final TAG:Ljava/lang/String; = "PackageHelper"

.field private static sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    const-wide/16 v0, 0x0

    .line 408
    .local v0, "sizeBytes":J
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 409
    .local v3, "codePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v4, "codeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 411
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "codeFile":Ljava/io/File;
    goto :goto_0

    .line 414
    :cond_0
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadataSize(Landroid/content/pm/PackageParser$PackageLite;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 417
    invoke-static {p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 419
    return-wide v0
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->createFd(Landroid/content/pm/PackageParser$PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 390
    :cond_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 391
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    return-wide v1

    .line 393
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-static {p0, p2, p3}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-static {p0, p2}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 267
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 268
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 269
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mounted"

    .line 270
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 271
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 269
    :goto_0
    return v2
.end method

.method public static fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 261
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    .line 262
    .local v1, "target":Ljava/util/UUID;
    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iget v4, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 263
    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v4

    .line 262
    invoke-virtual {v0, v1, v4}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static declared-synchronized getDefaultTestableInterface()Lcom/android/internal/content/PackageHelper$TestableInterface;
    .locals 2

    const-class v0, Lcom/android/internal/content/PackageHelper;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/android/internal/content/PackageHelper$1;

    invoke-direct {v1}, Lcom/android/internal/content/PackageHelper$1;-><init>()V

    sput-object v1, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;

    .line 136
    :cond_0
    sget-object v1, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/high16 v3, 0x400000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 300
    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 304
    :goto_0
    const/4 v1, 0x0

    .line 305
    .local v1, "ephemeral":Z
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x800

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x1

    .line 307
    .local v2, "prefer":I
    const/4 v1, 0x1

    .line 308
    const/4 v5, 0x0

    .local v5, "checkBoth":Z
    :goto_1
    goto :goto_4

    .line 309
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_0
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 310
    const/4 v2, 0x1

    .line 311
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    goto :goto_1

    .line 312
    .end local v2    # "prefer":I
    :cond_1
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 313
    const/4 v2, 0x2

    .line 314
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    goto :goto_1

    .line 315
    .end local v2    # "prefer":I
    :cond_2
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v4, :cond_3

    .line 316
    const/4 v2, 0x1

    .line 317
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    goto :goto_1

    .line 318
    .end local v2    # "prefer":I
    :cond_3
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v3, :cond_4

    .line 319
    const/4 v2, 0x2

    .line 320
    .restart local v2    # "prefer":I
    const/4 v5, 0x1

    goto :goto_1

    .line 321
    .end local v2    # "prefer":I
    :cond_4
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-nez v2, :cond_7

    .line 323
    if-eqz v0, :cond_6

    .line 325
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    .line 326
    const/4 v2, 0x2

    .restart local v2    # "prefer":I
    :goto_2
    goto :goto_3

    .line 328
    .end local v2    # "prefer":I
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 331
    :cond_6
    move v2, v4

    .line 333
    .restart local v2    # "prefer":I
    :goto_3
    const/4 v5, 0x1

    goto :goto_1

    .line 335
    .end local v2    # "prefer":I
    :cond_7
    const/4 v2, 0x1

    .line 336
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .line 339
    .restart local v5    # "checkBoth":Z
    :goto_4
    const/4 v6, 0x0

    .line 340
    .local v6, "fitsOnInternal":Z
    if-nez v5, :cond_8

    if-ne v2, v4, :cond_9

    .line 341
    :cond_8
    invoke-static {p0, p1}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    .line 344
    :cond_9
    const/4 v7, 0x0

    .line 345
    .local v7, "fitsOnExternal":Z
    if-nez v5, :cond_a

    if-ne v2, v3, :cond_b

    .line 346
    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/content/PackageHelper;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    .line 349
    :cond_b
    if-ne v2, v4, :cond_d

    .line 352
    if-eqz v6, :cond_e

    .line 353
    if-eqz v1, :cond_c

    .line 354
    const/4 v4, 0x3

    goto :goto_5

    .line 355
    :cond_c
    nop

    .line 353
    :goto_5
    return v4

    .line 357
    :cond_d
    if-ne v2, v3, :cond_e

    .line 358
    if-eqz v7, :cond_e

    .line 359
    return v3

    .line 363
    :cond_e
    if-eqz v5, :cond_10

    .line 364
    if-eqz v6, :cond_f

    .line 365
    return v4

    .line 366
    :cond_f
    if-eqz v7, :cond_10

    .line 367
    return v3

    .line 371
    :cond_10
    const/4 v3, -0x1

    return v3
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "installFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 278
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 279
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 280
    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 281
    iput p5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 283
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getDefaultTestableInterface()Lcom/android/internal/content/PackageHelper$TestableInterface;

    move-result-object v6

    .line 163
    .local v6, "testableInterface":Lcom/android/internal/content/PackageHelper$TestableInterface;
    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget-wide v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v0, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "testInterface"    # Lcom/android/internal/content/PackageHelper$TestableInterface;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 170
    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 171
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getForceAllowOnExternalSetting(Landroid/content/Context;)Z

    move-result v4

    .line 172
    .local v4, "forceAllowOnExternal":Z
    nop

    .line 173
    invoke-virtual {v2, v0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z

    move-result v5

    .line 176
    .local v5, "allow3rdPartyOnInternal":Z
    iget-object v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 180
    .local v6, "existingInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 181
    .local v7, "allCandidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 182
    .local v8, "fitsOnInternal":Z
    const/4 v9, 0x0

    .line 183
    .local v9, "bestCandidate":Landroid/os/storage/VolumeInfo;
    const-wide/high16 v10, -0x8000000000000000L

    .line 184
    .local v10, "bestCandidateAvailBytes":J
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    .line 185
    .local v13, "vol":Landroid/os/storage/VolumeInfo;
    iget v15, v13, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v15, v14, :cond_4

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 186
    const-string/jumbo v15, "private"

    iget-object v14, v13, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 187
    .local v14, "isInternalStorage":Z
    new-instance v15, Ljava/io/File;

    iget-object v0, v13, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    .line 188
    .local v0, "target":Ljava/util/UUID;
    iget v15, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 189
    invoke-static {v15}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v15

    .line 188
    invoke-virtual {v3, v0, v15}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v17

    .line 190
    .local v17, "availBytes":J
    if-eqz v14, :cond_1

    .line 191
    move-object/from16 v19, v3

    iget-wide v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 191
    .end local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .local v19, "storageManager":Landroid/os/storage/StorageManager;
    cmp-long v2, v2, v17

    if-gtz v2, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_1
    move/from16 v8, v16

    goto :goto_2

    .line 193
    .end local v19    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v3    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_1
    move-object/from16 v19, v3

    .line 193
    .end local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v19    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_2
    if-eqz v14, :cond_2

    if-eqz v5, :cond_5

    .line 194
    :cond_2
    iget-wide v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v2, v17, v2

    if-ltz v2, :cond_3

    .line 195
    iget-object v2, v13, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_3
    cmp-long v2, v17, v10

    if-ltz v2, :cond_5

    .line 198
    move-object v2, v13

    .line 199
    .end local v9    # "bestCandidate":Landroid/os/storage/VolumeInfo;
    .local v2, "bestCandidate":Landroid/os/storage/VolumeInfo;
    move-wide/from16 v9, v17

    .line 203
    .end local v0    # "target":Ljava/util/UUID;
    .end local v10    # "bestCandidateAvailBytes":J
    .end local v13    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v14    # "isInternalStorage":Z
    .end local v17    # "availBytes":J
    .local v9, "bestCandidateAvailBytes":J
    move-wide v10, v9

    move-object v9, v2

    goto :goto_3

    .line 203
    .end local v2    # "bestCandidate":Landroid/os/storage/VolumeInfo;
    .end local v19    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .local v9, "bestCandidate":Landroid/os/storage/VolumeInfo;
    .restart local v10    # "bestCandidateAvailBytes":J
    :cond_4
    move-object/from16 v19, v3

    .line 184
    .end local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v19    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_5
    :goto_3
    move-object/from16 v3, v19

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto :goto_0

    .line 206
    .end local v19    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v3    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_6
    move-object/from16 v19, v3

    .line 206
    .end local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v19    # "storageManager":Landroid/os/storage/StorageManager;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    if-eqz v8, :cond_7

    .line 208
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 210
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space on existing volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for system app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_8
    if-nez v4, :cond_d

    iget v0, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 219
    if-eqz v6, :cond_a

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 221
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot automatically move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to internal storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_a
    :goto_4
    if-eqz v5, :cond_c

    .line 229
    if-eqz v8, :cond_b

    .line 230
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 232
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Requested internal only, but not enough space"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not allowed to install non-system apps on internal storage"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_d
    if-eqz v6, :cond_10

    .line 238
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v8, :cond_e

    .line 240
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 241
    :cond_e
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 242
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object v0

    .line 244
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space on existing volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_10
    if-eqz v9, :cond_11

    .line 252
    iget-object v0, v9, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0

    .line 254
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "testInterface"    # Lcom/android/internal/content/PackageHelper$TestableInterface;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 145
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 146
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 147
    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 148
    invoke-static {p0, v0, p5}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static translateAllocateFlags(I)I
    .locals 1
    .param p0, "installFlags"    # I

    .line 431
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
