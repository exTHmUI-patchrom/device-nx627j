.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 532
    .local p2, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 533
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 534
    invoke-static {p1}, Landroid/app/LoadedApk;->access$000(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 535
    invoke-static {p1}, Landroid/app/LoadedApk;->access$000(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 536
    return-void
.end method

.method private ensureSplitLoaded(Ljava/lang/String;)I
    .locals 4
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "idx":I
    if-eqz p1, :cond_1

    .line 576
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->access$000(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 577
    if-ltz v0, :cond_0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->loadDependenciesForSplit(I)V

    .line 584
    return v0
.end method


# virtual methods
.method protected constructSplit(I[II)V
    .locals 12
    .param p1, "splitIdx"    # I
    .param p2, "configSplitIndices"    # [I
    .param p3, "parentSplitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 548
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/LoadedApk;->access$100(Landroid/app/LoadedApk;Ljava/util/List;)V

    .line 549
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v3}, Landroid/app/LoadedApk;->access$200(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v2, v1

    .line 552
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    .line 553
    .local v4, "configSplitIdx":I
    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->access$300(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v4    # "configSplitIdx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_0
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v2, v1

    .line 556
    return-void

    .line 560
    :cond_1
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v2, v2, p3

    .line 561
    .local v2, "parent":Ljava/lang/ClassLoader;
    iget-object v11, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 562
    invoke-static {v4}, Landroid/app/LoadedApk;->access$400(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 563
    invoke-static {v9}, Landroid/app/LoadedApk;->access$500(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, p1, -0x1

    aget-object v10, v9, v10

    .line 561
    move-object v9, v2

    invoke-virtual/range {v3 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    aput-object v3, v11, p1

    .line 565
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 566
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v3}, Landroid/app/LoadedApk;->access$300(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_2

    aget v4, p2, v1

    .line 568
    .restart local v4    # "configSplitIdx":I
    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->access$300(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v4    # "configSplitIdx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 570
    :cond_2
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v1, p1

    .line 571
    return-void
.end method

.method getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isSplitCached(I)Z
    .locals 1
    .param p1, "splitIdx"    # I

    .line 540
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
