.class public final Landroid/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 258
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 259
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 265
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 266
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .line 269
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean p2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    .line 271
    if-nez p1, :cond_0

    .line 272
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 273
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 277
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 284
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 288
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 296
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 8
    .param p1, "size"    # I

    .line 155
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2

    .line 156
    const-class v3, Landroid/util/ArraySet;

    monitor-enter v3

    .line 157
    :try_start_0
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 158
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v4, "array":[Ljava/lang/Object;
    :try_start_1
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 161
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 162
    aget-object v5, v4, v1

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 163
    aput-object v0, v4, v1

    aput-object v0, v4, v2

    .line 164
    sget v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v5, v1

    sput v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 170
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 172
    :try_start_2
    monitor-exit v3

    return-void

    .line 174
    :cond_0
    goto :goto_0

    .line 173
    :catch_0
    move-exception v5

    .line 177
    :goto_0
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sput-object v0, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 180
    sput v2, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 182
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 183
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 184
    const-class v3, Landroid/util/ArraySet;

    monitor-enter v3

    .line 185
    :try_start_3
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 186
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .restart local v4    # "array":[Ljava/lang/Object;
    :try_start_4
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 189
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 190
    aget-object v5, v4, v1

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 191
    aput-object v0, v4, v1

    aput-object v0, v4, v2

    .line 192
    sget v5, Landroid/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v5, v1

    sput v5, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 198
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_3

    .line 200
    :try_start_5
    monitor-exit v3

    return-void

    .line 202
    :cond_3
    goto :goto_1

    .line 201
    :catch_1
    move-exception v5

    .line 205
    :goto_1
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sput-object v0, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 208
    sput v2, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 210
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 213
    :cond_5
    :goto_2
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 214
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 218
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 219
    const-class v0, Landroid/util/ArraySet;

    monitor-enter v0

    .line 220
    :try_start_0
    sget v6, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    .line 221
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 222
    aput-object p0, p1, v5

    .line 223
    add-int/lit8 v3, p2, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 224
    aput-object v1, p1, v3

    .line 223
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 226
    .end local v3    # "i":I
    :cond_0
    sput-object p1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 227
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 233
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 234
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 235
    const-class v0, Landroid/util/ArraySet;

    monitor-enter v0

    .line 236
    :try_start_1
    sget v6, Landroid/util/ArraySet;->sBaseCacheSize:I

    if-ge v6, v4, :cond_4

    .line 237
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 238
    aput-object p0, p1, v5

    .line 239
    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 240
    aput-object v1, p1, v3

    .line 239
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 242
    .end local v3    # "i":I
    :cond_3
    sput-object p1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 243
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 249
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 251
    :cond_5
    :goto_2
    return-void
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 681
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Landroid/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    .line 729
    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 79
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 82
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 83
    const/4 v1, -0x1

    return v1

    .line 86
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 89
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 90
    return v1

    .line 94
    :cond_1
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    return v1

    .line 100
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 101
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 100
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 106
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    .line 105
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 113
    .end local v3    # "i":I
    :cond_6
    not-int v3, v2

    return v3
.end method

.method private indexOfNull()I
    .locals 5

    .line 117
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 120
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 121
    const/4 v1, -0x1

    return v1

    .line 124
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 127
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 128
    return v1

    .line 132
    :cond_1
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 133
    return v1

    .line 138
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 139
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 144
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    return v3

    .line 143
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 151
    .end local v3    # "i":I
    :cond_6
    not-int v3, v2

    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 380
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v1

    .local v1, "index":I
    goto :goto_1

    .line 384
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 385
    .restart local v0    # "hash":I
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .line 387
    .restart local v1    # "index":I
    :goto_1
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 388
    return v2

    .line 391
    :cond_2
    not-int v1, v1

    .line 392
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_6

    .line 393
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v4, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_3

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_2

    .line 394
    :cond_3
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-lt v3, v4, :cond_4

    move v4, v6

    nop

    :cond_4
    :goto_2
    move v3, v4

    .line 398
    .local v3, "n":I
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 399
    .local v4, "ohashes":[I
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 400
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 402
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_5

    .line 404
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v8, v6

    invoke-static {v6, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_5
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v4, v6, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 411
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_6
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_7

    .line 415
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v2, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v2, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    :cond_7
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v0, v2, v1

    .line 420
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 421
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v2, v5

    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 422
    return v5
.end method

.method public addAll(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 459
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 460
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 461
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 462
    if-lez v0, :cond_1

    .line 463
    iget-object v1, p1, Landroid/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    iget-object v1, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    goto :goto_1

    .line 468
    :cond_0
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 469
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 472
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 767
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 770
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 771
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 772
    :cond_0
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 431
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 432
    .local v0, "index":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 433
    :cond_0
    iget-boolean v1, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 434
    .local v1, "hash":I
    :goto_0
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 437
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_2

    .line 446
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 447
    return-void

    .line 449
    :cond_2
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 450
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v1, v2, v0

    .line 451
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 452
    return-void

    .line 435
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clear()V
    .locals 3

    .line 303
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 305
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 306
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 309
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 336
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 752
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 753
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const/4 v1, 0x0

    return v1

    .line 758
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 316
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 317
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 318
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 319
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 320
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-lez v2, :cond_0

    .line 321
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    :cond_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 326
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 606
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 607
    return v0

    .line 609
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 610
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 611
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 612
    return v2

    .line 616
    :cond_1
    move v3, v2

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    .line 617
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 618
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    .line 619
    return v2

    .line 616
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 626
    .end local v3    # "i":I
    :cond_3
    nop

    .line 627
    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 622
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 629
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 637
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 638
    .local v0, "hashes":[I
    const/4 v1, 0x0

    .line 639
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 640
    aget v4, v0, v2

    add-int/2addr v1, v4

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 346
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_1

    .line 347
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 346
    :goto_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 364
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 741
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 482
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 483
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 484
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 485
    const/4 v1, 0x1

    return v1

    .line 487
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Landroid/util/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 555
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 559
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 560
    .local v1, "originalSize":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 561
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    .end local v3    # "i":I
    :cond_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 782
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 783
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 784
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 785
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 786
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 496
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 497
    .local v0, "old":Ljava/lang/Object;
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 500
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v4}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 501
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 502
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 503
    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    goto/16 :goto_0

    .line 505
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_4

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_4

    .line 509
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-le v1, v4, :cond_1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/2addr v4, v3

    add-int/2addr v4, v1

    nop

    :cond_1
    move v1, v4

    .line 513
    .local v1, "n":I
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 514
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 515
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 517
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, v3

    iput v6, p0, Landroid/util/ArraySet;->mSize:I

    .line 518
    if-lez p1, :cond_2

    .line 520
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v4, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    :cond_2
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge p1, v2, :cond_3

    .line 528
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v4, v2, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v5, v2, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    .end local v1    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 532
    :cond_4
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 533
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge p1, v1, :cond_5

    .line 537
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :cond_5
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 543
    :goto_0
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 797
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 798
    .local v0, "removed":Z
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 799
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 800
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 801
    const/4 v0, 0x1

    .line 798
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 804
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 571
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 576
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 577
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 583
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    .line 584
    nop

    .line 585
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 586
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 588
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_1

    .line 590
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 592
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 654
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string/jumbo v0, "{}"

    return-object v0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 659
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    const/4 v1, 0x0

    .line 660
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_3

    .line 661
    if-lez v1, :cond_1

    .line 662
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 665
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 666
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 668
    :cond_2
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 356
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
