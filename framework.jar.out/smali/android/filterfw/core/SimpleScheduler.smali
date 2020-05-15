.class public Landroid/filterfw/core/SimpleScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "SimpleScheduler.java"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 0
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 29
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 30
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    .line 34
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 3

    .line 38
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 39
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    return-object v1

    .line 41
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
