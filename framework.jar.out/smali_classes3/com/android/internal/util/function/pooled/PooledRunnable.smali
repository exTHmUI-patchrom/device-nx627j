.class public interface abstract Lcom/android/internal/util/function/pooled/PooledRunnable;
.super Ljava/lang/Object;
.source "PooledRunnable.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledLambda;
.implements Ljava/lang/Runnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# virtual methods
.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    .line 27
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    return-object v0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
.end method
