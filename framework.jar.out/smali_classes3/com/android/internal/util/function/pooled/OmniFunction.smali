.class abstract Lcom/android/internal/util/function/pooled/OmniFunction;
.super Ljava/lang/Object;
.source "OmniFunction.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledFunction;
.implements Ljava/util/function/BiFunction;
.implements Lcom/android/internal/util/function/TriFunction;
.implements Lcom/android/internal/util/function/QuadFunction;
.implements Lcom/android/internal/util/function/QuintFunction;
.implements Lcom/android/internal/util/function/HexFunction;
.implements Lcom/android/internal/util/function/pooled/PooledConsumer;
.implements Ljava/util/function/BiConsumer;
.implements Lcom/android/internal/util/function/TriConsumer;
.implements Lcom/android/internal/util/function/QuadConsumer;
.implements Lcom/android/internal/util/function/QuintConsumer;
.implements Lcom/android/internal/util/function/HexConsumer;
.implements Lcom/android/internal/util/function/pooled/PooledPredicate;
.implements Ljava/util/function/BiPredicate;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledRunnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;


# annotations
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
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledFunction<",
        "TA;TR;>;",
        "Ljava/util/function/BiFunction<",
        "TA;TB;TR;>;",
        "Lcom/android/internal/util/function/TriFunction<",
        "TA;TB;TC;TR;>;",
        "Lcom/android/internal/util/function/QuadFunction<",
        "TA;TB;TC;TD;TR;>;",
        "Lcom/android/internal/util/function/QuintFunction<",
        "TA;TB;TC;TD;TE;TR;>;",
        "Lcom/android/internal/util/function/HexFunction<",
        "TA;TB;TC;TD;TE;TF;TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledConsumer<",
        "TA;>;",
        "Ljava/util/function/BiConsumer<",
        "TA;TB;>;",
        "Lcom/android/internal/util/function/TriConsumer<",
        "TA;TB;TC;>;",
        "Lcom/android/internal/util/function/QuadConsumer<",
        "TA;TB;TC;TD;>;",
        "Lcom/android/internal/util/function/QuintConsumer<",
        "TA;TB;TC;TD;TE;>;",
        "Lcom/android/internal/util/function/HexConsumer<",
        "TA;TB;TC;TD;TE;TF;>;",
        "Lcom/android/internal/util/function/pooled/PooledPredicate<",
        "TA;>;",
        "Ljava/util/function/BiPredicate<",
        "TA;TB;>;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier<",
        "TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledRunnable;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
        "TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public abstract andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/OmniFunction;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/OmniFunction;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TR;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TR;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)TR;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)TR;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)TR;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)TR;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asConsumer()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    return-object p0
.end method

.method public asRunnable()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 0

    .line 97
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)TR;"
        }
    .end annotation
.end method

.method public abstract negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic negate()Ljava/util/function/BiPredicate;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1

    .line 40
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 77
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public runOrThrow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->run()V

    .line 148
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)Z"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
