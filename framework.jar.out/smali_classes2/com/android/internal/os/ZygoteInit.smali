.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field public static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_GFX_DRIVER:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sPreloadComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    return-void
.end method

.method private static beginIcuCachePinning()V
    .locals 5

    .line 167
    const-string v0, "Zygote"

    const-string v1, "Installing ICU cache reference pinning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 171
    const-string v0, "Zygote"

    const-string v1, "Preloading ICU data..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/util/ULocale;

    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 174
    .local v0, "localesToPin":[Landroid/icu/util/ULocale;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 175
    .local v3, "uLocale":Landroid/icu/util/ULocale;
    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v4, v3}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 174
    .end local v3    # "uLocale":Landroid/icu/util/ULocale;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method static final childZygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 929
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 930
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method static createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .locals 8
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "targetSdkVersion"    # I

    .line 561
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "libraryPath":Ljava/lang/String;
    nop

    .line 564
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 563
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v0

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method private static encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "newElement"    # Ljava/lang/String;

    .line 650
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 651
    :cond_1
    :goto_0
    nop

    .line 650
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private static endIcuCachePinning()V
    .locals 2

    .line 181
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 183
    const-string v0, "Zygote"

    const-string v1, "Uninstalled ICU cache reference pinning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private static forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 25
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;

    .line 663
    const/16 v0, 0xd

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v9, 0x7

    aput v1, v0, v9

    sget v1, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    const/16 v10, 0x8

    aput v1, v0, v10

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v11, 0x9

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v11, 0xa

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    const/16 v11, 0xb

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/16 v11, 0xc

    aput v1, v0, v11

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v11

    .line 679
    .local v11, "capabilities":J
    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    invoke-direct {v0, v1, v2}, Landroid/system/StructCapUserHeader;-><init>(II)V

    move-object v1, v0

    .line 683
    .local v1, "header":Landroid/system/StructCapUserHeader;
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v13, v0

    .line 686
    .local v13, "data":[Landroid/system/StructCapUserData;
    nop

    .line 685
    nop

    .line 687
    aget-object v0, v13, v2

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v14, v0

    aget-object v0, v13, v3

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v8, v14

    and-long/2addr v8, v11

    .line 690
    .end local v11    # "capabilities":J
    .local v8, "capabilities":J
    new-array v0, v10, [Ljava/lang/String;

    const-string v10, "--setuid=1000"

    aput-object v10, v0, v2

    const-string v10, "--setgid=1000"

    aput-object v10, v0, v3

    const-string v3, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3006,3007,3009,3010"

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--capabilities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v3, "--nice-name=system_server"

    aput-object v3, v0, v6

    const-string v3, "--runtime-args"

    aput-object v3, v0, v7

    const-string v3, "--target-sdk-version=10000"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string v3, "com.android.server.SystemServer"

    const/4 v4, 0x7

    aput-object v3, v0, v4

    move-object v3, v0

    .line 700
    .local v3, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    move-object v4, v0

    .line 705
    .local v4, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    new-instance v5, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v5, v3}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V

    move-object v4, v5

    .line 706
    invoke-static {v4}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 707
    invoke-static {v4}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 709
    const-string v5, "dalvik.vm.profilesystemserver"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 711
    .local v2, "profileSystemServer":Z
    if-eqz v2, :cond_0

    .line 712
    :try_start_2
    iget v5, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 723
    .end local v2    # "profileSystemServer":Z
    :catch_0
    move-exception v0

    move-object/from16 v23, v1

    goto :goto_1

    .line 716
    .restart local v2    # "profileSystemServer":Z
    :cond_0
    :goto_0
    :try_start_3
    iget v14, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v15, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v5, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v6, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    const/16 v18, 0x0

    iget-wide v10, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v23, v1

    :try_start_4
    iget-wide v0, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .end local v1    # "header":Landroid/system/StructCapUserHeader;
    .local v23, "header":Landroid/system/StructCapUserHeader;
    move-object/from16 v16, v5

    move/from16 v17, v6

    move-wide/from16 v19, v10

    move-wide/from16 v21, v0

    invoke-static/range {v14 .. v22}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 725
    .end local v2    # "profileSystemServer":Z
    .local v0, "pid":I
    nop

    .line 724
    nop

    .line 728
    if-nez v0, :cond_2

    .line 729
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 733
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 734
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 737
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 723
    .end local v0    # "pid":I
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v23    # "header":Landroid/system/StructCapUserHeader;
    .restart local v1    # "header":Landroid/system/StructCapUserHeader;
    :catch_2
    move-exception v0

    move-object/from16 v23, v1

    .line 724
    .end local v1    # "header":Landroid/system/StructCapUserHeader;
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    .restart local v23    # "header":Landroid/system/StructCapUserHeader;
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 684
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v3    # "args":[Ljava/lang/String;
    .end local v4    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v8    # "capabilities":J
    .end local v13    # "data":[Landroid/system/StructCapUserData;
    .end local v23    # "header":Landroid/system/StructCapUserHeader;
    .restart local v1    # "header":Landroid/system/StructCapUserHeader;
    .restart local v11    # "capabilities":J
    :catch_3
    move-exception v0

    move-object/from16 v23, v1

    .end local v1    # "header":Landroid/system/StructCapUserHeader;
    .restart local v23    # "header":Landroid/system/StructCapUserHeader;
    move-object v1, v0

    .line 685
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to capget()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static gcAndFinalize()V
    .locals 1

    .line 444
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 449
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 450
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 451
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 452
    return-void
.end method

.method private static getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;

    .line 639
    if-nez p0, :cond_0

    const-string v0, "PCL[]"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PCL["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;
    .locals 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .line 459
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 461
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 465
    :cond_0
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "systemServerClasspath":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 467
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    .line 470
    const-string v2, "dalvik.vm.profilesystemserver"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 472
    .local v2, "profileSystemServer":Z
    if-eqz v2, :cond_2

    sget-boolean v3, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    if-eqz v3, :cond_2

    .line 474
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 475
    :catch_0
    move-exception v3

    .line 476
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Zygote"

    const-string v5, "Failed to set up system server profile"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v2    # "profileSystemServer":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 482
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 486
    .local v2, "args":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 487
    array-length v3, v2

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 488
    .local v3, "amendedArgs":[Ljava/lang/String;
    const-string v5, "-cp"

    aput-object v5, v3, v1

    .line 489
    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 490
    array-length v5, v2

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    move-object v2, v3

    .line 494
    .end local v3    # "amendedArgs":[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 496
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 494
    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    .end local v2    # "args":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .line 501
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_5

    .line 502
    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 510
    :cond_5
    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .line 877
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isPreloadComplete()Z
    .locals 1

    .line 887
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method public static lazyPreload()V
    .locals 4

    .line 157
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 158
    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 161
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "argv"    # [Ljava/lang/String;

    .line 755
    new-instance v0, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v0}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    .line 759
    .local v0, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 763
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 766
    nop

    .line 771
    :try_start_1
    const-string v2, "1"

    const-string/jumbo v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 772
    const/4 v2, 0x0

    const-string v3, "boot_zygote_init"

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v4, v4

    .line 772
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 776
    :cond_0
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Zygote64Timing"

    goto :goto_0

    :cond_1
    const-string v2, "Zygote32Timing"

    .line 777
    .local v2, "bootTimeTag":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/util/TimingsTraceLog;

    const-wide/16 v4, 0x4000

    invoke-direct {v3, v2, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 779
    .local v3, "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string v4, "ZygoteInit"

    invoke-virtual {v3, v4}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 782
    const/4 v4, 0x0

    .line 783
    .local v4, "startSystemServer":Z
    const-string/jumbo v5, "zygote"

    .line 784
    .local v5, "socketName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 785
    .local v6, "abiList":Ljava/lang/String;
    const/4 v7, 0x0

    .line 786
    .local v7, "enableLazyPreload":Z
    const/4 v8, 0x1

    .line 786
    .local v8, "i":I
    :goto_1
    array-length v9, p0

    if-ge v8, v9, :cond_6

    .line 787
    const-string/jumbo v9, "start-system-server"

    aget-object v10, p0, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 788
    const/4 v4, 0x1

    goto :goto_2

    .line 789
    :cond_2
    const-string v9, "--enable-lazy-preload"

    aget-object v10, p0, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 790
    const/4 v7, 0x1

    goto :goto_2

    .line 791
    :cond_3
    aget-object v9, p0, v8

    const-string v10, "--abi-list="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 792
    aget-object v9, p0, v8

    const-string v10, "--abi-list="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_2

    .line 793
    :cond_4
    aget-object v9, p0, v8

    const-string v10, "--socket-name="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 794
    aget-object v9, p0, v8

    const-string v10, "--socket-name="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 786
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 796
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown command line argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p0, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    .end local v8    # "i":I
    :cond_6
    if-eqz v6, :cond_a

    .line 804
    invoke-virtual {v0, v5}, Lcom/android/internal/os/ZygoteServer;->registerServerSocketFromEnv(Ljava/lang/String;)V

    .line 807
    if-nez v7, :cond_7

    .line 808
    const-string v8, "ZygotePreload"

    invoke-virtual {v3, v8}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 809
    const/16 v8, 0xbcc

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 809
    invoke-static {v8, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 812
    invoke-static {}, Landroid/util/NubiaConfig;->loadConfig()V

    .line 814
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 815
    const/16 v8, 0xbd6

    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 815
    invoke-static {v8, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 817
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_3

    .line 819
    :cond_7
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    .line 823
    :goto_3
    const-string v8, "PostZygoteInitGC"

    invoke-virtual {v3, v8}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 825
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 827
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 830
    invoke-static {v1, v1}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 832
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSecurityInit()V

    .line 835
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnmountStorageOnInit()V

    .line 837
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 839
    if-eqz v4, :cond_8

    .line 840
    invoke-static {v6, v5, v0}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v1

    .line 844
    .local v1, "r":Ljava/lang/Runnable;
    if-eqz v1, :cond_8

    .line 845
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 846
    return-void

    .line 850
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_8
    :try_start_2
    const-string v1, "Zygote"

    const-string v8, "Accepting command socket connections"

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {v0, v6}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 859
    .end local v2    # "bootTimeTag":Ljava/lang/String;
    .end local v3    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v4    # "startSystemServer":Z
    .end local v5    # "socketName":Ljava/lang/String;
    .end local v6    # "abiList":Ljava/lang/String;
    .end local v7    # "enableLazyPreload":Z
    .local v1, "caller":Ljava/lang/Runnable;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 860
    nop

    .line 859
    nop

    .line 864
    if-eqz v1, :cond_9

    .line 865
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 867
    :cond_9
    return-void

    .line 801
    .end local v1    # "caller":Ljava/lang/Runnable;
    .restart local v2    # "bootTimeTag":Ljava/lang/String;
    .restart local v3    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v4    # "startSystemServer":Z
    .restart local v5    # "socketName":Ljava/lang/String;
    .restart local v6    # "abiList":Ljava/lang/String;
    .restart local v7    # "enableLazyPreload":Z
    :cond_a
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v8, "No ABI list supplied."

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    .end local v2    # "bootTimeTag":Ljava/lang/String;
    .end local v3    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v4    # "startSystemServer":Z
    .end local v5    # "socketName":Ljava/lang/String;
    .end local v6    # "abiList":Ljava/lang/String;
    .end local v7    # "enableLazyPreload":Z
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string v2, "Zygote"

    const-string v3, "System zygote died with exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 859
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    throw v1

    .line 764
    :catch_1
    move-exception v1

    .line 765
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to setpgid(0,0)"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static native nativePreloadAppProcessHALs()V
.end method

.method private static final native nativeZygoteInit()V
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 36
    .param p0, "classPath"    # Ljava/lang/String;

    .line 573
    const-string v0, ":"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "classPathElements":[Ljava/lang/String;
    const-string v0, "installd"

    .line 575
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v20

    .line 576
    .local v20, "installd":Landroid/os/IInstalld;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v27

    .line 578
    .local v27, "instructionSet":Ljava/lang/String;
    const-string v0, ""

    .line 579
    .local v0, "classPathForElement":Ljava/lang/String;
    array-length v15, v2

    const/16 v28, 0x0

    move-object v13, v0

    move/from16 v14, v28

    .line 579
    .end local v0    # "classPathForElement":Ljava/lang/String;
    .local v13, "classPathForElement":Ljava/lang/String;
    :goto_0
    if-ge v14, v15, :cond_1

    aget-object v12, v2, v14

    .line 582
    .local v12, "classPathElement":Ljava/lang/String;
    const-string v0, "dalvik.vm.systemservercompilerfilter"

    const-string/jumbo v3, "speed"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 587
    .local v23, "systemServerFilter":Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v12

    move-object/from16 v22, v27

    :try_start_0
    invoke-static/range {v21 .. v26}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .local v0, "dexoptNeeded":I
    goto :goto_1

    .line 594
    .end local v0    # "dexoptNeeded":I
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 598
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error checking classpath element for system server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    nop

    .line 600
    .end local v0    # "e":Ljava/io/IOException;
    move/from16 v0, v28

    .line 600
    .local v0, "dexoptNeeded":I
    :goto_1
    move/from16 v21, v0

    .line 603
    .end local v0    # "dexoptNeeded":I
    .local v21, "dexoptNeeded":I
    if-eqz v21, :cond_0

    .line 604
    const-string v22, "*"

    .line 605
    .local v22, "packageName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 606
    .local v24, "outputPath":Ljava/lang/String;
    const/16 v25, 0x0

    .line 607
    .local v25, "dexFlags":I
    move-object/from16 v11, v23

    .line 608
    .local v11, "compilerFilter":Ljava/lang/String;
    sget-object v26, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 609
    .local v26, "uuid":Ljava/lang/String;
    const/16 v29, 0x0

    .line 610
    .local v29, "seInfo":Ljava/lang/String;
    nop

    .line 611
    invoke-static {v13}, Lcom/android/internal/os/ZygoteInit;->getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 612
    .local v30, "classLoaderContext":Ljava/lang/String;
    move/from16 v31, v28

    .line 614
    .local v31, "targetSdkVersion":I
    const/16 v5, 0x3e8

    :try_start_1
    const-string v6, "*"

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string/jumbo v19, "server-dexopt"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v3, v20

    move-object v4, v12

    move-object/from16 v7, v27

    move/from16 v8, v21

    move-object/from16 v9, v24

    move-object/from16 v32, v12

    move-object/from16 v12, v26

    .end local v12    # "classPathElement":Ljava/lang/String;
    .local v32, "classPathElement":Ljava/lang/String;
    move-object/from16 v33, v13

    move-object/from16 v13, v30

    .line 614
    .end local v13    # "classPathForElement":Ljava/lang/String;
    .local v33, "classPathForElement":Ljava/lang/String;
    move/from16 v34, v14

    move-object/from16 v14, v29

    move/from16 v35, v15

    move v15, v0

    :try_start_2
    invoke-interface/range {v3 .. v19}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    nop

    .line 626
    move-object/from16 v5, v32

    goto :goto_3

    .line 619
    :catch_1
    move-exception v0

    goto :goto_2

    .line 619
    .end local v32    # "classPathElement":Ljava/lang/String;
    .end local v33    # "classPathForElement":Ljava/lang/String;
    .restart local v12    # "classPathElement":Ljava/lang/String;
    .restart local v13    # "classPathForElement":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v15

    .line 621
    .end local v12    # "classPathElement":Ljava/lang/String;
    .end local v13    # "classPathForElement":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v32    # "classPathElement":Ljava/lang/String;
    .restart local v33    # "classPathForElement":Ljava/lang/String;
    :goto_2
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed compiling classpath element for system server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v32    # "classPathElement":Ljava/lang/String;
    .local v5, "classPathElement":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "compilerFilter":Ljava/lang/String;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v24    # "outputPath":Ljava/lang/String;
    .end local v25    # "dexFlags":I
    .end local v26    # "uuid":Ljava/lang/String;
    .end local v29    # "seInfo":Ljava/lang/String;
    .end local v30    # "classLoaderContext":Ljava/lang/String;
    .end local v31    # "targetSdkVersion":I
    goto :goto_3

    .line 626
    .end local v5    # "classPathElement":Ljava/lang/String;
    .end local v33    # "classPathForElement":Ljava/lang/String;
    .restart local v12    # "classPathElement":Ljava/lang/String;
    .restart local v13    # "classPathForElement":Ljava/lang/String;
    :cond_0
    move-object v5, v12

    move-object/from16 v33, v13

    move/from16 v34, v14

    move/from16 v35, v15

    .line 626
    .end local v12    # "classPathElement":Ljava/lang/String;
    .end local v13    # "classPathForElement":Ljava/lang/String;
    .restart local v5    # "classPathElement":Ljava/lang/String;
    .restart local v33    # "classPathForElement":Ljava/lang/String;
    :goto_3
    move-object/from16 v3, v33

    invoke-static {v3, v5}, Lcom/android/internal/os/ZygoteInit;->encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .end local v5    # "classPathElement":Ljava/lang/String;
    .end local v21    # "dexoptNeeded":I
    .end local v23    # "systemServerFilter":Ljava/lang/String;
    .end local v33    # "classPathForElement":Ljava/lang/String;
    .local v0, "classPathForElement":Ljava/lang/String;
    move-object v13, v0

    goto :goto_4

    .line 590
    .end local v0    # "classPathForElement":Ljava/lang/String;
    .restart local v12    # "classPathElement":Ljava/lang/String;
    .restart local v13    # "classPathForElement":Ljava/lang/String;
    .restart local v23    # "systemServerFilter":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v5, v12

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v35, v15

    .line 590
    .end local v12    # "classPathElement":Ljava/lang/String;
    .end local v13    # "classPathForElement":Ljava/lang/String;
    .local v3, "classPathForElement":Ljava/lang/String;
    .restart local v5    # "classPathElement":Ljava/lang/String;
    move-object v4, v0

    .line 592
    .local v0, "ignored":Ljava/io/FileNotFoundException;
    const-string v4, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing classpath element for system server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    nop

    .line 579
    move-object v13, v3

    .line 579
    .end local v0    # "ignored":Ljava/io/FileNotFoundException;
    .end local v3    # "classPathForElement":Ljava/lang/String;
    .end local v5    # "classPathElement":Ljava/lang/String;
    .end local v23    # "systemServerFilter":Ljava/lang/String;
    .restart local v13    # "classPathForElement":Ljava/lang/String;
    :goto_4
    add-int/lit8 v14, v34, 0x1

    move/from16 v15, v35

    goto/16 :goto_0

    .line 629
    :cond_1
    move-object v3, v13

    .line 629
    .end local v13    # "classPathForElement":Ljava/lang/String;
    .restart local v3    # "classPathForElement":Ljava/lang/String;
    return-void
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 7
    .param p0, "capabilities"    # [I

    .line 744
    const-wide/16 v0, 0x0

    .line 745
    .local v0, "result":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 746
    .local v4, "capability":I
    if-ltz v4, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-gt v4, v5, :cond_0

    .line 749
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 745
    .end local v4    # "capability":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 747
    .restart local v4    # "capability":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    .end local v4    # "capability":I
    :cond_1
    return-wide v0
.end method

.method static preload(Landroid/util/TimingsTraceLog;)V
    .locals 3
    .param p0, "bootTimingsTraceLog"    # Landroid/util/TimingsTraceLog;

    .line 128
    const-string v0, "Zygote"

    const-string v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "BeginIcuCachePinning"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginIcuCachePinning()V

    .line 131
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 132
    const-string v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 134
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 135
    const-string v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 137
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 138
    const-string v0, "PreloadAppProcessHALs"

    const-wide/16 v1, 0x4000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 140
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 141
    const-string v0, "PreloadOpenGL"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 143
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 144
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 145
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 148
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 149
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    .line 150
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 151
    const-string v0, "Zygote"

    const-string v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 154
    return-void
.end method

.method private static preloadClasses()V
    .locals 17

    .line 245
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    move-object v1, v0

    .line 249
    .local v1, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/preloaded-classes"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v2, v0

    .line 253
    .local v2, "is":Ljava/io/InputStream;
    nop

    .line 252
    nop

    .line 255
    const-string v0, "Zygote"

    const-string v3, "Preloading classes..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 259
    .local v3, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v5

    .line 260
    .local v5, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v6

    .line 265
    .local v6, "regid":I
    const/4 v7, 0x0

    .line 266
    .local v7, "droppedPriviliges":Z
    const/4 v8, 0x0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 268
    const/16 v0, 0x270f

    :try_start_1
    invoke-static {v8, v0}, Landroid/system/Os;->setregid(II)V

    .line 269
    invoke-static {v8, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    nop

    .line 274
    const/4 v7, 0x1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Failed to drop root"

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 279
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v9

    .line 280
    .local v9, "defaultUtilization":F
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 283
    const-wide/16 v10, 0x4000

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x100

    invoke-direct {v0, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v12, v0

    .line 286
    .local v12, "br":Ljava/io/BufferedReader;
    move v0, v8

    .line 286
    .local v0, "count":I
    :goto_1
    move v13, v0

    .line 288
    .end local v0    # "count":I
    .local v13, "count":I
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 288
    .local v14, "line":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 290
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 291
    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    goto/16 :goto_4

    .line 295
    :cond_1
    invoke-static {v10, v11, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    const/4 v0, 0x0

    const/4 v15, 0x1

    :try_start_3
    invoke-static {v14, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    add-int/lit8 v13, v13, 0x1

    .line 320
    .end local v13    # "count":I
    .restart local v0    # "count":I
    :goto_2
    nop

    .line 321
    move v0, v13

    goto :goto_3

    .line 311
    .end local v0    # "count":I
    .restart local v13    # "count":I
    :catch_1
    move-exception v0

    move-object v15, v0

    .line 312
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v15, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error preloading "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    instance-of v8, v0, Ljava/lang/Error;

    if-nez v8, :cond_3

    .line 316
    instance-of v8, v0, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_2

    .line 317
    move-object v8, v0

    check-cast v8, Ljava/lang/RuntimeException;

    throw v8

    .line 319
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 314
    :cond_3
    move-object v8, v0

    check-cast v8, Ljava/lang/Error;

    throw v8

    .line 309
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 310
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v8, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem preloading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_2

    .line 307
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 308
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v8, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Class not found for preloading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 321
    .end local v13    # "count":I
    .local v0, "count":I
    :goto_3
    const-wide/16 v10, 0x4000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_5

    .line 286
    .end local v0    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    .restart local v13    # "count":I
    :cond_4
    :goto_4
    move v0, v13

    .line 286
    .end local v13    # "count":I
    .restart local v0    # "count":I
    :goto_5
    const/4 v8, 0x0

    const-wide/16 v10, 0x4000

    goto/16 :goto_1

    .line 324
    .end local v0    # "count":I
    .restart local v13    # "count":I
    .restart local v14    # "line":Ljava/lang/String;
    :cond_5
    const-string v0, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "...preloaded "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " classes in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 324
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v13    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    invoke-virtual {v1, v9}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 334
    const-string v0, "PreloadDexCaches"

    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 336
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    if-eqz v7, :cond_6

    .line 341
    const/4 v8, 0x0

    :try_start_5
    invoke-static {v8, v8}, Landroid/system/Os;->setreuid(II)V

    .line 342
    invoke-static {v8, v8}, Landroid/system/Os;->setregid(II)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 343
    :catch_4
    move-exception v0

    .line 344
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v10, "Failed to restore root"

    invoke-direct {v8, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 329
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 326
    :catch_5
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "Zygote"

    const-string v10, "Error reading /system/etc/preloaded-classes."

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    invoke-virtual {v1, v9}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 334
    const-string v0, "PreloadDexCaches"

    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 336
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    if-eqz v7, :cond_6

    .line 341
    const/4 v8, 0x0

    :try_start_7
    invoke-static {v8, v8}, Landroid/system/Os;->setreuid(II)V

    .line 342
    invoke-static {v8, v8}, Landroid/system/Os;->setregid(II)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_6

    .line 345
    :goto_6
    goto :goto_7

    .line 343
    :catch_6
    move-exception v0

    .line 344
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v10, "Failed to restore root"

    invoke-direct {v8, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 348
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_6
    :goto_7
    return-void

    .line 329
    :goto_8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    invoke-virtual {v1, v9}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 334
    const-string v8, "PreloadDexCaches"

    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 336
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    if-eqz v7, :cond_7

    .line 341
    const/4 v8, 0x0

    :try_start_8
    invoke-static {v8, v8}, Landroid/system/Os;->setreuid(II)V

    .line 342
    invoke-static {v8, v8}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_7

    .line 345
    goto :goto_9

    .line 343
    :catch_7
    move-exception v0

    .line 344
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v10, "Failed to restore root"

    invoke-direct {v8, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 344
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_7
    :goto_9
    throw v0

    .line 250
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "startTime":J
    .end local v5    # "reuid":I
    .end local v6    # "regid":I
    .end local v7    # "droppedPriviliges":Z
    .end local v9    # "defaultUtilization":F
    :catch_8
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Zygote"

    const-string v3, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .line 400
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 401
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 402
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 406
    .local v3, "id":I
    if-eqz v3, :cond_1

    .line 407
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_0

    .end local v3    # "id":I
    goto :goto_1

    .line 408
    .restart local v3    # "id":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    .end local v3    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .line 420
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 421
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 422
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 426
    .local v3, "id":I
    if-eqz v3, :cond_1

    .line 427
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .end local v3    # "id":I
    goto :goto_1

    .line 428
    .restart local v3    # "id":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    .end local v3    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 3

    .line 196
    const-string/jumbo v0, "ro.gfx.driver.0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "driverPackageName":Ljava/lang/String;
    const-string/jumbo v1, "ro.zygote.disable_gl_preload"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 201
    :cond_1
    return-void
.end method

.method private static preloadResources()V
    .locals 9

    .line 358
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 361
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 362
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->startPreloading()V

    .line 364
    const-string v1, "Zygote"

    const-string v2, "Preloading resources..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 367
    .local v1, "startTime":J
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v4, 0x107006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 369
    .local v3, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v4

    .line 370
    .local v4, "N":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " resources in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v1, v5

    .line 375
    sget-object v5, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v6, 0x1070069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 377
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v5

    move v4, v5

    .line 378
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " resources in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v5, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v6, 0x1120074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v1, v5

    .line 385
    sget-object v5, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v6, 0x107006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 387
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v5

    move v4, v5

    .line 388
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " resource in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "startTime":J
    .end local v3    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "N":I
    :cond_0
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Zygote"

    const-string v3, "Failure preloading resources"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    .line 187
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 189
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 190
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    .line 204
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 205
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 206
    return-void
.end method

.method private static prepareSystemServerProfile(Ljava/lang/String;)V
    .locals 12
    .param p0, "systemServerClasspath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "codePaths":[Ljava/lang/String;
    const-string v1, "installd"

    .line 529
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    .line 531
    .local v1, "installd":Landroid/os/IInstalld;
    const-string v9, "android"

    .line 532
    .local v9, "systemServerPackageName":Ljava/lang/String;
    const-string/jumbo v10, "primary.prof"

    .line 533
    .local v10, "systemServerProfileName":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v2, 0x3e8

    .line 536
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v11, 0x0

    aget-object v7, v0, v11

    const/4 v8, 0x0

    .line 533
    move-object v2, v1

    move-object v3, v9

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 543
    .local v2, "profileDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "profilePath":Ljava/lang/String;
    invoke-static {v3, v0}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;[Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public static setApiBlacklistExemptions([Ljava/lang/String;)V
    .locals 1
    .param p0, "exemptions"    # [Ljava/lang/String;

    .line 548
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public static setHiddenApiAccessLogSampleRate(I)V
    .locals 1
    .param p0, "percent"    # I

    .line 552
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    .line 553
    return-void
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 1
    .param p0, "socketName"    # Ljava/lang/String;

    .line 881
    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string/jumbo v0, "zygote_secondary"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "zygote"

    .line 883
    .local v0, "otherZygoteName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method private static warmUpJcaProviders()V
    .locals 8

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 216
    .local v0, "startTime":J
    const-string v2, "Starting installation of AndroidKeyStoreProvider"

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 221
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 222
    const-string v2, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 227
    const-string v2, "Starting warm up of JCA providers"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 229
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v2, v6

    .line 230
    .local v7, "p":Ljava/security/Provider;
    invoke-virtual {v7}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 229
    .end local v7    # "p":Ljava/security/Provider;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const-string v2, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warmed up JCA providers in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 235
    return-void
.end method

.method public static final zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 914
    const-string v0, "ZygoteInit"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 917
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 918
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 919
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
