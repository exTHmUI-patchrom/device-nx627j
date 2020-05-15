.class final Landroid/provider/Settings$GenerationTracker;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationTracker"
.end annotation


# instance fields
.field private final mArray:Landroid/util/MemoryIntArray;

.field private mCurrentGeneration:I

.field private final mErrorHandler:Ljava/lang/Runnable;

.field private final mIndex:I


# direct methods
.method public constructor <init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V
    .locals 0
    .param p1, "array"    # Landroid/util/MemoryIntArray;
    .param p2, "index"    # I
    .param p3, "generation"    # I
    .param p4, "errorHandler"    # Ljava/lang/Runnable;

    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    .line 1904
    iput p2, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    .line 1905
    iput-object p4, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    .line 1906
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 1907
    return-void
.end method

.method private readCurrentGeneration()I
    .locals 3

    .line 1926
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-virtual {v0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1934
    :cond_0
    goto :goto_0

    .line 1929
    :catch_0
    move-exception v0

    .line 1930
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error getting current generation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1931
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1932
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1935
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1940
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-virtual {v0}, Landroid/util/MemoryIntArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    goto :goto_0

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error closing backing array"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1943
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1944
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1947
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCurrentGeneration()I
    .locals 1

    .line 1921
    iget v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return v0
.end method

.method public isGenerationChanged()Z
    .locals 2

    .line 1910
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    move-result v0

    .line 1911
    .local v0, "currentGeneration":I
    if-ltz v0, :cond_1

    .line 1912
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_0

    .line 1913
    const/4 v1, 0x0

    return v1

    .line 1915
    :cond_0
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 1917
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
