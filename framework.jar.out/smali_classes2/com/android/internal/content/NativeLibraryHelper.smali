.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final BITCODE_PRESENT:I = 0x1

.field public static final CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final DEBUG_NATIVE:Z = false

.field private static final HAS_NATIVE_BRIDGE:Z

.field public static final LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 451
    const-string v0, "0"

    const-string/jumbo v1, "ro.dalvik.vm.native.bridge"

    const-string v2, "0"

    .line 452
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    .line 451
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 55
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/FileDescriptor;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 13
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    aget-wide v11, v0, v2

    .line 195
    .local v11, "apkHandle":J
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    sget-boolean v9, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    iget-boolean v10, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    move-wide v4, v11

    move-object v7, p2

    invoke-static/range {v4 .. v10}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v4

    .line 197
    .local v4, "res":I
    if-eq v4, v3, :cond_0

    .line 198
    return v4

    .line 194
    .end local v4    # "res":I
    .end local v11    # "apkHandle":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    return v3
.end method

.method public static copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I
    .locals 5
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "useIsaSubdir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 324
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "abi":I
    if-ltz v0, :cond_1

    .line 330
    aget-object v1, p2, v0

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "instructionSet":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 333
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    .local v2, "isaSubdir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 335
    nop

    .line 336
    .local v2, "subDir":Ljava/io/File;
    goto :goto_0

    .line 337
    .end local v2    # "subDir":Ljava/io/File;
    :cond_0
    move-object v2, p1

    .line 340
    .restart local v2    # "subDir":Ljava/io/File;
    :goto_0
    aget-object v3, p2, v0

    invoke-static {p0, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 341
    .local v3, "copyRet":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 342
    return v3

    .line 346
    .end local v1    # "instructionSet":Ljava/lang/String;
    .end local v2    # "subDir":Ljava/io/File;
    .end local v3    # "copyRet":I
    :cond_1
    return v0
.end method

.method public static copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    const/16 v1, -0x72

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 356
    if-eqz p2, :cond_0

    const-string v0, "-"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "NativeHelper"

    const-string v3, "Ignoring abiOverride for multi arch application."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    const/16 v0, -0x72

    .line 361
    .local v0, "copyRet":I
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    const/16 v4, -0x71

    if-lez v3, :cond_1

    .line 362
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, v3, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v3

    move v0, v3

    .line 364
    if-gez v0, :cond_1

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    .line 366
    const-string v1, "NativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v0

    .line 371
    :cond_1
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 372
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, v3, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v3

    move v0, v3

    .line 374
    if-gez v0, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_2

    .line 376
    const-string v1, "NativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v0

    .line 380
    .end local v0    # "copyRet":I
    :cond_2
    goto :goto_2

    .line 381
    :cond_3
    const/4 v0, 0x0

    .line 382
    .local v0, "cpuAbiOverride":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :cond_4
    if-eqz p2, :cond_5

    .line 385
    move-object v0, p2

    .line 388
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 389
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    goto :goto_1

    :cond_6
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 390
    .local v3, "abiList":[Ljava/lang/String;
    :goto_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_7

    if-nez v0, :cond_7

    .line 391
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 392
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v3, v4

    .line 395
    :cond_7
    invoke-static {p0, p1, v3, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v4

    .line 397
    .local v4, "copyRet":I
    if-gez v4, :cond_8

    if-eq v4, v1, :cond_8

    .line 398
    const-string v1, "NativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure copying native libraries [errorCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    return v4

    .line 403
    .end local v0    # "cpuAbiOverride":Ljava/lang/String;
    .end local v3    # "abiList":[Ljava/lang/String;
    .end local v4    # "copyRet":I
    :cond_8
    :goto_2
    return v2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NativeHelper"

    const-string v2, "Copying native libraries failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/16 v1, -0x6e

    return v1
.end method

.method public static createNativeLibrarySubdir(Ljava/io/File;)V
    .locals 4
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 292
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    sget v2, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set SELinux context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "supportedAbis"    # [Ljava/lang/String;

    .line 212
    const/16 v0, -0x72

    .line 213
    .local v0, "finalRes":I
    iget-object v1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-wide v4, v1, v3

    .line 214
    .local v4, "apkHandle":J
    iget-boolean v6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    invoke-static {v4, v5, p1, v6}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;Z)I

    move-result v6

    .line 215
    .local v6, "res":I
    const/16 v7, -0x72

    if-ne v6, v7, :cond_0

    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    goto :goto_1

    .line 217
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_0
    const/16 v7, -0x71

    if-ne v6, v7, :cond_1

    .line 220
    if-gez v0, :cond_3

    .line 221
    const/16 v0, -0x71

    goto :goto_1

    .line 223
    :cond_1
    if-ltz v6, :cond_4

    .line 225
    if-ltz v0, :cond_2

    if-ge v6, v0, :cond_3

    .line 226
    :cond_2
    move v0, v6

    .line 213
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_4
    return v6

    .line 233
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_5
    return v0
.end method

.method private static native hasRenderscriptBitcode(J)I
.end method

.method public static hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-wide v4, v0, v3

    .line 458
    .local v4, "apkHandle":J
    invoke-static {v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v6

    .line 459
    .local v6, "res":I
    if-ltz v6, :cond_1

    .line 461
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 462
    return v7

    .line 457
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error scanning APK, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_2
    return v2
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I
.end method

.method private static native nativeFindSupportedAbi(J[Ljava/lang/String;Z)I
.end method

.method private static native nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
.end method

.method private static native nativeSumNativeBinaries(JLjava/lang/String;Z)J
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .locals 5
    .param p0, "nativeLibraryRoot"    # Ljava/io/File;
    .param p1, "deleteRootDir"    # Z

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 261
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 262
    const/4 v1, 0x0

    .local v1, "nn":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 267
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    goto :goto_1

    .line 269
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    const-string v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "nn":I
    :cond_2
    if-eqz p1, :cond_3

    .line 277
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 278
    const-string v1, "NativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete native binary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)V
    .locals 2
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .line 241
    if-nez p0, :cond_0

    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 243
    return-void
.end method

.method private static sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 9
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abi"    # Ljava/lang/String;

    .line 178
    const-wide/16 v0, 0x0

    .line 179
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 180
    .local v5, "apkHandle":J
    iget-boolean v7, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    invoke-static {v5, v6, p1, v7}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;Z)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 179
    .end local v5    # "apkHandle":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-wide v0
.end method

.method private static sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .locals 3
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiList"    # [Ljava/lang/String;

    .line 308
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, "abi":I
    if-ltz v0, :cond_0

    .line 310
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 312
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    const-wide/16 v0, 0x0

    .line 413
    .local v0, "sum":J
    iget-boolean v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v2, :cond_2

    .line 417
    if-eqz p1, :cond_0

    const-string v2, "-"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    const-string v2, "NativeHelper"

    const-string v3, "Ignoring abiOverride for multi arch application."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 422
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 425
    :cond_1
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 426
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_2

    .line 429
    :cond_2
    const/4 v2, 0x0

    .line 430
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 431
    const/4 v2, 0x0

    goto :goto_0

    .line 432
    :cond_3
    if-eqz p1, :cond_4

    .line 433
    move-object v2, p1

    .line 436
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 437
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 438
    .local v3, "abiList":[Ljava/lang/String;
    :goto_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_6

    if-nez v2, :cond_6

    .line 439
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 440
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 443
    :cond_6
    invoke-static {p0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 445
    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    .end local v3    # "abiList":[Ljava/lang/String;
    :cond_7
    :goto_2
    return-wide v0
.end method
