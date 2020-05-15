.class abstract Landroid/gesture/Learner;
.super Ljava/lang/Object;
.source "Learner.java"


# instance fields
.field private final mInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addInstance(Landroid/gesture/Instance;)V
    .locals 1
    .param p1, "instance"    # Landroid/gesture/Instance;

    .line 33
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method abstract classify(II[F)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end method

.method getInstances()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Instance;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    return-object v0
.end method

.method removeInstance(J)V
    .locals 6
    .param p1, "id"    # J

    .line 51
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    .line 52
    .local v0, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 53
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/Instance;

    .line 55
    .local v3, "instance":Landroid/gesture/Instance;
    iget-wide v4, v3, Landroid/gesture/Instance;->id:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void

    .line 53
    .end local v3    # "instance":Landroid/gesture/Instance;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method removeInstances(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    iget-object v1, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    .line 70
    .local v1, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 72
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/Instance;

    .line 75
    .local v4, "instance":Landroid/gesture/Instance;
    iget-object v5, v4, Landroid/gesture/Instance;->label:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v5, v4, Landroid/gesture/Instance;->label:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/gesture/Instance;->label:Ljava/lang/String;

    .line 76
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v4    # "instance":Landroid/gesture/Instance;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method
