.class public Lcom/android/internal/os/ClassLoaderFactory;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final DEX_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final PATH_CLASS_LOADER_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 35
    const-class v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 36
    const-class v0, Ldalvik/system/DelegateLastClassLoader;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 3
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "classloaderName"    # Ljava/lang/String;

    .line 72
    invoke-static {p3}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 74
    :cond_0
    invoke-static {p3}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ldalvik/system/DelegateLastClassLoader;

    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid classLoaderName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;
    .locals 14
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "libraryPermittedPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "targetSdkVersion"    # I
    .param p5, "isNamespaceShared"    # Z
    .param p6, "classloaderName"    # Ljava/lang/String;

    move-object v0, p0

    .line 88
    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-static {v0, v7, v8, v9}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    .line 91
    .local v10, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 92
    .local v1, "isForVendor":Z
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 93
    .local v5, "path":Ljava/lang/String;
    const-string v6, "/vendor/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 95
    goto :goto_1

    .line 92
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "isForVendor":Z
    .local v11, "isForVendor":Z
    :cond_1
    :goto_1
    move v11, v1

    const-string v1, "createClassloaderNamespace"

    const-wide/16 v12, 0x40

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 99
    move-object v1, v10

    move/from16 v2, p4

    move-object v3, v7

    move-object/from16 v4, p2

    move/from16 v5, p5

    move v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/ClassLoaderFactory;->createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "errorMessage":Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    if-nez v1, :cond_2

    .line 112
    return-object v10

    .line 108
    :cond_2
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create namespace for the classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
.end method

.method public static isDelegateLastClassLoaderName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPathClassLoaderName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 55
    :goto_1
    return v0
.end method

.method public static isValidClassLoaderName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
