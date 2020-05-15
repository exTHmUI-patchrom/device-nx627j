.class public Landroid/webkit/WebViewLibraryLoader;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;,
        Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String;

.field private static sAddressSpaceReserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Landroid/webkit/WebViewLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 46
    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return v0
.end method

.method static createRelroFile(ZLandroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V
    .locals 10
    .param p0, "is64Bit"    # Z
    .param p1, "nativeLib"    # Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    .line 106
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 109
    .local v1, "abi":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/webkit/WebViewLibraryLoader$1;

    invoke-direct {v2, v1}, Landroid/webkit/WebViewLibraryLoader$1;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 122
    .local v9, "crashHandler":Ljava/lang/Runnable;
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 126
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    const-class v3, Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;

    .line 128
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->path:Ljava/lang/String;

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebViewLoader-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x40d

    .line 127
    move-object v6, v1

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    .line 130
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 135
    .end local v0    # "success":Z
    goto :goto_2

    .line 130
    .restart local v0    # "success":Z
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to start the relro file creator process"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    goto :goto_1

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Native library paths to the WebView RelRo process must not be null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    nop

    .line 133
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error starting relro file creator for abi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 136
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private static createRelros(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)I
    .locals 3
    .param p0, "nativeLib32bit"    # Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .param p1, "nativeLib64bit"    # Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "numRelros":I
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 163
    if-nez p0, :cond_0

    .line 164
    sget-object v1, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v2, "No 32-bit WebView library path, skipping relro creation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(ZLandroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 172
    :cond_1
    :goto_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 173
    if-nez p1, :cond_2

    .line 174
    sget-object v1, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v2, "No 64-bit WebView library path, skipping relro creation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1, p1}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(ZLandroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 181
    :cond_3
    :goto_1
    return v0
.end method

.method private static findNativeLibrary(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .locals 5
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "nativeLibFileName"    # Ljava/lang/String;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "libDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "libPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    new-instance v2, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;-><init>(Ljava/lang/String;J)V

    return-object v2

    .line 309
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2, p2, p1}, Landroid/webkit/WebViewLibraryLoader;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object v2

    return-object v2
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .locals 9
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "abiList"    # [Ljava/lang/String;
    .param p2, "nativeLibFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 332
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 333
    .local v0, "z":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 334
    .local v4, "abi":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "entry":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 336
    .local v6, "e":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v7

    if-nez v7, :cond_0

    .line 338
    new-instance v2, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    invoke-direct {v2, v3, v7, v8}, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 338
    return-object v2

    .line 333
    .end local v4    # "abi":Ljava/lang/String;
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/zip/ZipEntry;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    .end local v0    # "z":Ljava/util/zip/ZipFile;
    nop

    .line 344
    return-object v1

    .line 341
    .restart local v0    # "z":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 332
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0    # "z":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v1, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getWebViewNativeLibrary(Landroid/content/pm/PackageInfo;Z)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .locals 4
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "is64bit"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 265
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "nativeLibFileName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibraryDirectory(Landroid/content/pm/ApplicationInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "dir":Ljava/lang/String;
    nop

    .line 270
    if-eqz p1, :cond_0

    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 269
    :goto_0
    invoke-static {v0, v1, v3, v2}, Landroid/webkit/WebViewLibraryLoader;->findNativeLibrary(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object v3

    .line 275
    .local v3, "lib":Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    return-object v3
.end method

.method public static getWebViewNativeLibraryDirectory(Landroid/content/pm/ApplicationInfo;Z)Ljava/lang/String;
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "is64bit"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0

    .line 292
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I
    .locals 4
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p1, "libraryFileName"    # Ljava/lang/String;

    .line 240
    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v1, "can\'t load with relro file; address space not reserved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x2

    return v0

    .line 245
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_0

    .line 246
    :cond_1
    const-string v0, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 247
    .local v0, "relroPath":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0, p0}, Landroid/webkit/WebViewLibraryLoader;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v1

    .line 248
    .local v1, "result":I
    if-eqz v1, :cond_2

    .line 249
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v3, "failed to load with relro file, proceeding without"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    return v1
.end method

.method static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method

.method static native nativeReserveAddressSpace(J)Z
.end method

.method static prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p0, "webviewPackageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 145
    nop

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibrary(Landroid/content/pm/PackageInfo;Z)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object v0

    .line 147
    .local v0, "nativeLib32bit":Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    nop

    .line 148
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibrary(Landroid/content/pm/PackageInfo;Z)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object v1

    .line 149
    .local v1, "nativeLib64bit":Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->updateWebViewZygoteVmSize(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V

    .line 151
    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->createRelros(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)I

    move-result v2

    return v2
.end method

.method static reserveAddressSpaceInZygote()V
    .locals 5

    .line 216
    const-string/jumbo v0, "webviewchromium_loader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "persist.sys.webview.vmsize"

    .line 218
    const-wide/32 v1, 0x6400000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 220
    .local v0, "addressSpaceToReserve":J
    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->nativeReserveAddressSpace(J)Z

    move-result v2

    sput-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    .line 222
    sget-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reserving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes of address space failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void
.end method

.method private static setWebViewZygoteVmSize(J)V
    .locals 2
    .param p0, "vmSize"    # J

    .line 351
    const-string/jumbo v0, "persist.sys.webview.vmsize"

    .line 352
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private static updateWebViewZygoteVmSize(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V
    .locals 6
    .param p0, "nativeLib32bit"    # Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .param p1, "nativeLib64bit"    # Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 194
    const-wide/16 v0, 0x0

    .line 196
    .local v0, "newVmSize":J
    if-eqz p0, :cond_0

    iget-wide v2, p0, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v2, p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 207
    :cond_1
    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/32 v4, 0x6400000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 208
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting new address space to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->setWebViewZygoteVmSize(J)V

    .line 210
    return-void
.end method
