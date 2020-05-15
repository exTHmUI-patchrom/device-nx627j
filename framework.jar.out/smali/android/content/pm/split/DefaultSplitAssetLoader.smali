.class public Landroid/content/pm/split/DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "DefaultSplitAssetLoader.java"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# instance fields
.field private final mBaseCodePath:Ljava/lang/String;

.field private mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final mFlags:I

.field private final mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p2, "flags"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 47
    iput p2, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    .line 48
    return-void
.end method

.method private static loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 52
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load APK at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v1

    .line 71
    :cond_0
    iget-object v1, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 75
    .local v1, "apkAssets":[Landroid/content/res/ApkAssets;
    const/4 v3, 0x0

    .line 76
    .local v3, "splitIdx":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "splitIdx":I
    iget-object v5, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v5, v6}, Landroid/content/pm/split/DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v5

    aput-object v5, v1, v3

    .line 79
    .end local v3    # "splitIdx":I
    iget-object v3, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    iget-object v3, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v5, v3

    move v6, v4

    move v4, v2

    .end local v4    # "splitIdx":I
    .local v6, "splitIdx":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v3, v4

    .line 81
    .local v7, "apkPath":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    .local v8, "splitIdx":I
    iget v9, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Landroid/content/pm/split/DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v9

    aput-object v9, v1, v6

    .line 80
    .end local v6    # "splitIdx":I
    .end local v7    # "apkPath":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v6, v8

    goto :goto_1

    .line 85
    .end local v8    # "splitIdx":I
    .restart local v6    # "splitIdx":I
    :cond_2
    move v4, v6

    .end local v6    # "splitIdx":I
    .restart local v4    # "splitIdx":I
    :cond_3
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    .line 86
    .local v3, "assets":Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    move-object v5, v3

    invoke-virtual/range {v5 .. v23}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 88
    invoke-virtual {v3, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 90
    iput-object v3, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 91
    iget-object v2, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v2
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/content/pm/split/DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
