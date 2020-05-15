.class public Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method private getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 16
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "cacheKey"    # Ljava/lang/String;
    .param p8, "classLoaderName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    .line 54
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 56
    .local v11, "baseParent":Ljava/lang/ClassLoader;
    iget-object v12, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 57
    if-nez p6, :cond_0

    .line 58
    move-object v0, v11

    .line 66
    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v0, "parent":Ljava/lang/ClassLoader;
    move-object v13, v0

    goto :goto_0

    .line 66
    .end local v0    # "parent":Ljava/lang/ClassLoader;
    .restart local p6    # "parent":Ljava/lang/ClassLoader;
    :cond_0
    move-object/from16 v13, p6

    .line 66
    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v13, "parent":Ljava/lang/ClassLoader;
    :goto_0
    const-wide/16 v14, 0x40

    if-ne v13, v11, :cond_2

    .line 67
    :try_start_0
    iget-object v0, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 68
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 69
    monitor-exit v12

    return-object v0

    .line 72
    :cond_1
    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 74
    move-object v2, v9

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v13

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 78
    .local v2, "classloader":Ljava/lang/ClassLoader;
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 80
    const-string/jumbo v3, "setLayerPaths"

    invoke-static {v14, v15, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :try_start_1
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    iget-object v3, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v12

    return-object v2

    .line 94
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "classloader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :goto_1
    move-object/from16 v2, p8

    goto :goto_2

    .line 89
    :cond_2
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    const/4 v0, 0x0

    move-object/from16 v2, p8

    :try_start_2
    invoke-static {v9, v0, v13, v2}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 92
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 93
    monitor-exit v12

    return-object v0

    .line 94
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    .line 33
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p2, "libPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_0

    .line 133
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 134
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addNativePath(Ljava/util/Collection;)V

    .line 135
    return-void

    .line 131
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;

    .line 119
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 123
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    .line 124
    return-void

    .line 120
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 9
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;

    .line 110
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 9
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;

    .line 40
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
