.class public final Lcom/android/internal/textservice/LazyIntToIntMap;
.super Ljava/lang/Object;
.source "LazyIntToIntMap.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mMap:Landroid/util/SparseIntArray;

.field private final mMappingFunction:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(Ljava/util/function/IntUnaryOperator;)V
    .locals 1
    .param p1, "mappingFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    .line 42
    iput-object p1, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMappingFunction:Ljava/util/function/IntUnaryOperator;

    .line 43
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1
    .param p1, "key"    # I

    .line 50
    iget-object v0, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 51
    return-void
.end method

.method public get(I)I
    .locals 3
    .param p1, "key"    # I

    .line 59
    iget-object v0, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 60
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMappingFunction:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 64
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/internal/textservice/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    return v1
.end method
