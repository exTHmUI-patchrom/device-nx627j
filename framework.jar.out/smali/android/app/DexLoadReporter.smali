.class Landroid/app/DexLoadReporter;
.super Ljava/lang/Object;
.source "DexLoadReporter.java"

# interfaces
.implements Ldalvik/system/BaseDexClassLoader$Reporter;


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Landroid/app/DexLoadReporter;

.field private static final TAG:Ljava/lang/String; = "DexLoadReporter"


# instance fields
.field private final mDataDirs:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDataDirs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/app/DexLoadReporter;

    invoke-direct {v0}, Landroid/app/DexLoadReporter;-><init>()V

    sput-object v0, Landroid/app/DexLoadReporter;->INSTANCE:Landroid/app/DexLoadReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    .line 62
    return-void
.end method

.method static getInstance()Landroid/app/DexLoadReporter;
    .locals 1

    .line 65
    sget-object v0, Landroid/app/DexLoadReporter;->INSTANCE:Landroid/app/DexLoadReporter;

    return-object v0
.end method

.method private isSecondaryDexFile(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dataDirs"    # [Ljava/lang/String;

    .line 193
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 194
    .local v3, "dataDir":Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const/4 v0, 0x1

    return v0

    .line 193
    .end local v3    # "dataDir":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    return v1
.end method

.method private notifyPackageManager(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldalvik/system/BaseDexClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "classLoadersChain":Ljava/util/List;, "Ljava/util/List<Ldalvik/system/BaseDexClassLoader;>;"
    .local p2, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/BaseDexClassLoader;

    .line 121
    .local v2, "bdc":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "bdc":Ldalvik/system/BaseDexClassLoader;
    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 127
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-interface {v2, v1, v0, p2, v3}, Landroid/content/pm/IPackageManager;->notifyDexLoad(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "DexLoadReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify PM about dex load for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private registerSecondaryDexForProfiling(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dataDirs"    # [Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/app/DexLoadReporter;->isSecondaryDexFile(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "dexPathFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v1, "secondaryProfileDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cur.prof"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v2, "secondaryProfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    const-string v3, "DexLoadReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create the profile directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 174
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    return-void

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "DexLoadReporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create profile for secondary dex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private registerSecondaryDexForProfiling([Ljava/lang/String;)V
    .locals 4
    .param p1, "dexPaths"    # [Ljava/lang/String;

    .line 134
    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v2, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 143
    .local v2, "dataDirs":[Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 145
    .local v3, "dexPath":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Landroid/app/DexLoadReporter;->registerSecondaryDexForProfiling(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    .end local v3    # "dexPath":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-void

    .line 143
    .end local v2    # "dataDirs":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method registerAppDataDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataDir"    # Ljava/lang/String;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_0
    :goto_0
    return-void
.end method

.method public report(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldalvik/system/BaseDexClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "classLoadersChain":Ljava/util/List;, "Ljava/util/List<Ldalvik/system/BaseDexClassLoader;>;"
    .local p2, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 92
    const-string v0, "DexLoadReporter"

    const-string v1, "Bad call to DexLoadReporter: argument size mismatch"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "DexLoadReporter"

    const-string v1, "Bad call to DexLoadReporter: empty dex paths"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "dexPathsForRegistration":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_2

    .line 105
    return-void

    .line 110
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/DexLoadReporter;->notifyPackageManager(Ljava/util/List;Ljava/util/List;)V

    .line 113
    invoke-direct {p0, v0}, Landroid/app/DexLoadReporter;->registerSecondaryDexForProfiling([Ljava/lang/String;)V

    .line 114
    return-void
.end method
