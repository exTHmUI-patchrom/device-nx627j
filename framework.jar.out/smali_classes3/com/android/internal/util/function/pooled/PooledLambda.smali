.class public interface abstract Lcom/android/internal/util/function/pooled/PooledLambda;
.super Ljava/lang/Object;
.source "PooledLambda.java"


# direct methods
.method public static __()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    return-object v0
.end method

.method public static __(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    .line 113
    .local p0, "typeHint":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v0

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .line 661
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TB;>;"
        }
    .end annotation

    .line 699
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TC;>;"
        }
    .end annotation

    .line 737
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TD;>;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TD;>;"
        }
    .end annotation

    .line 775
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TD;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .line 480
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TB;>;"
        }
    .end annotation

    .line 516
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TC;>;"
        }
    .end annotation

    .line 552
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .line 308
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TB;>;"
        }
    .end annotation

    .line 359
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledConsumer;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/QuadFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation

    .line 680
    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TB;TR;>;"
        }
    .end annotation

    .line 718
    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TC;TR;>;"
        }
    .end annotation

    .line 756
    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;TB;TC;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TD;>;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TD;TR;>;"
        }
    .end annotation

    .line 794
    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TD;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation

    .line 498
    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TB;TR;>;"
        }
    .end annotation

    .line 534
    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;TA;TB;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TC;>;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TC;TR;>;"
        }
    .end annotation

    .line 570
    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TC;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;+TR;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation

    .line 342
    .local p0, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;+TR;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;+TR;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TB;TR;>;"
        }
    .end annotation

    .line 393
    .local p0, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledFunction;

    return-object v0
.end method

.method public static obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 983
    .local p0, "function":Lcom/android/internal/util/function/HexConsumer;, "Lcom/android/internal/util/function/HexConsumer<-TA;-TB;-TC;-TD;-TE;-TF;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 986
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 987
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 826
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 829
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 830
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 903
    .local p0, "function":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 904
    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 906
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 907
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 601
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 604
    .local v1, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 605
    .end local v1    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 423
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 426
    .local v1, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 427
    .end local v1    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 237
    .local p0, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 240
    .local v1, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 241
    .end local v1    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .line 325
    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TB;>;"
        }
    .end annotation

    .line 376
    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static obtainRunnable(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 927
    .local p0, "function":Lcom/android/internal/util/function/HexConsumer;, "Lcom/android/internal/util/function/HexConsumer<-TA;-TB;-TC;-TD;-TE;-TF;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 623
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 849
    .local p0, "function":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 444
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 257
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 176
    .local p0, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static obtainSupplier(D)Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 3
    .param p0, "value"    # D

    .line 159
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 160
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 161
    return-object v0
.end method

.method public static obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 3
    .param p0, "value"    # I

    .line 135
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 136
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    int-to-long v1, p0

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 137
    return-object v0
.end method

.method public static obtainSupplier(J)Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1
    .param p0, "value"    # J

    .line 147
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 148
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-wide p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 149
    return-object v0
.end method

.method public static obtainSupplier(Lcom/android/internal/util/function/HexFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexFunction<",
            "-TA;-TB;-TC;-TD;-TE;-TF;+TR;>;TA;TB;TC;TD;TE;TF;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 948
    .local p0, "function":Lcom/android/internal/util/function/HexFunction;, "Lcom/android/internal/util/function/HexFunction<-TA;-TB;-TC;-TD;-TE;-TF;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadFunction<",
            "-TA;-TB;-TC;-TD;+TR;>;TA;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 642
    .local p0, "function":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<-TA;-TB;-TC;-TD;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Lcom/android/internal/util/function/QuintFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintFunction<",
            "-TA;-TB;-TC;-TD;-TE;+TR;>;TA;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 869
    .local p0, "function":Lcom/android/internal/util/function/QuintFunction;, "Lcom/android/internal/util/function/QuintFunction<-TA;-TB;-TC;-TD;-TE;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriFunction<",
            "-TA;-TB;-TC;+TR;>;TA;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 462
    .local p0, "function":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<-TA;-TB;-TC;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 123
    .local p0, "value":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 124
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-object p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 125
    return-object v0
.end method

.method public static obtainSupplier(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;+TR;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 291
    .local p0, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 274
    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Ljava/util/function/Function;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TA;+TR;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 208
    .local p0, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TA;+TR;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method

.method public static obtainSupplier(Ljava/util/function/Predicate;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TA;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 192
    .local p0, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledSupplier;

    return-object v0
.end method


# virtual methods
.method public abstract recycle()V
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
.end method
