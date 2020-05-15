.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    .local p1, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private static append([II)[I
    .locals 2
    .param p0, "src"    # [I
    .param p1, "elem"    # I

    .line 144
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 145
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 147
    :cond_0
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 148
    .local v0, "dst":[I
    array-length v1, p0

    aput p1, v0, v1

    .line 149
    return-object v0
.end method

.method private collectConfigSplitIndices(I)[I
    .locals 3
    .param p1, "splitIdx"    # I

    .line 109
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    iget-object v0, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 110
    .local v0, "deps":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    .line 111
    :cond_1
    :goto_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    return-object v1
.end method

.method public static createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 160
    .local v0, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    move v2, v4

    .local v2, "splitIdx":I
    :goto_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v2, v5, :cond_3

    .line 165
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_0

    .line 167
    goto :goto_2

    .line 172
    :cond_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 173
    .local v5, "splitDependency":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 174
    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 175
    .local v7, "depIdx":I
    if-ltz v7, :cond_1

    .line 179
    add-int/lit8 v6, v7, 0x1

    .line 180
    .end local v7    # "depIdx":I
    .local v6, "targetIdx":I
    goto :goto_1

    .line 176
    .end local v6    # "targetIdx":I
    .restart local v7    # "depIdx":I
    :cond_1
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' requires split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', which is missing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v1

    .line 182
    .end local v7    # "depIdx":I
    :cond_2
    move v6, v4

    .line 184
    .restart local v6    # "targetIdx":I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    new-array v8, v1, [I

    aput v6, v8, v4

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    .end local v5    # "splitDependency":Ljava/lang/String;
    .end local v6    # "targetIdx":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "splitIdx":I
    :cond_3
    move v1, v4

    .local v1, "splitIdx":I
    :goto_3
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 192
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4

    .line 194
    goto/16 :goto_5

    .line 199
    :cond_4
    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 200
    .local v2, "configForSplit":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 201
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 202
    .local v5, "depIdx":I
    if-ltz v5, :cond_6

    .line 207
    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_5

    .line 212
    add-int/lit8 v5, v5, 0x1

    .line 213
    .local v5, "targetSplitIdx":I
    goto :goto_4

    .line 208
    .local v5, "depIdx":I
    :cond_5
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v3

    .line 203
    :cond_6
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' targets split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\', which is missing."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v3

    .line 214
    .end local v5    # "depIdx":I
    :cond_7
    move v5, v4

    .line 216
    .local v5, "targetSplitIdx":I
    :goto_4
    nop

    .line 217
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    add-int/lit8 v8, v1, 0x1

    invoke-static {v7, v8}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    move-result-object v7

    .line 216
    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .end local v2    # "configForSplit":Ljava/lang/String;
    .end local v5    # "targetSplitIdx":I
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 221
    .end local v1    # "splitIdx":I
    :cond_8
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 222
    .local v1, "bitset":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_6
    if-ge v2, v5, :cond_c

    .line 223
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 225
    .local v7, "splitIdx":I
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 226
    :goto_7
    if-eq v7, v3, :cond_b

    .line 228
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 233
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 236
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 237
    .local v8, "deps":[I
    if-eqz v8, :cond_9

    aget v9, v8, v4

    goto :goto_8

    :cond_9
    move v9, v3

    :goto_8
    move v7, v9

    .line 238
    .end local v8    # "deps":[I
    goto :goto_7

    .line 229
    :cond_a
    new-instance v3, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    const-string v4, "Cycle detected in split dependencies."

    invoke-direct {v3, v4, v6}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V

    throw v3

    .line 222
    .end local v7    # "splitIdx":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 240
    .end local v2    # "i":I
    .end local v5    # "size":I
    :cond_c
    return-object v0
.end method


# virtual methods
.method protected abstract constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isSplitCached(I)Z
.end method

.method protected loadDependenciesForSplit(I)V
    .locals 5
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 69
    invoke-direct {p0, v0}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v1

    .line 70
    .local v1, "configSplitIndices":[I
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 71
    return-void

    .line 75
    .end local v1    # "configSplitIndices":[I
    :cond_1
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 76
    .local v1, "linearDependencies":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 83
    :goto_0
    iget-object v2, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 84
    .local v2, "deps":[I
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 85
    aget p1, v2, v0

    goto :goto_1

    .line 87
    :cond_2
    const/4 p1, -0x1

    .line 90
    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 95
    .end local v2    # "deps":[I
    goto :goto_0

    .line 98
    :cond_4
    :goto_2
    move v0, p1

    .line 99
    .local v0, "parentIdx":I
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_5

    .line 100
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 101
    .local v3, "idx":I
    invoke-direct {p0, v3}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v4

    .line 102
    .local v4, "configSplitIndices":[I
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 103
    move v0, v3

    .line 99
    .end local v3    # "idx":I
    .end local v4    # "configSplitIndices":[I
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 105
    .end local v2    # "i":I
    :cond_5
    return-void
.end method
