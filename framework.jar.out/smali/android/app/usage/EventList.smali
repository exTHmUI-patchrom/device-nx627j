.class public Landroid/app/usage/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field private final mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void
.end method

.method public firstIndexOnOrAfter(J)I
    .locals 8
    .param p1, "timeStamp"    # J

    .line 90
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    .local v0, "size":I
    move v1, v0

    .line 92
    .local v1, "result":I
    const/4 v2, 0x0

    .line 93
    .local v2, "lo":I
    add-int/lit8 v3, v0, -0x1

    .line 94
    .local v3, "hi":I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 95
    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    .line 96
    .local v4, "mid":I
    iget-object v5, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    iget-wide v5, v5, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 97
    .local v5, "midTimeStamp":J
    cmp-long v7, v5, p1

    if-ltz v7, :cond_0

    .line 98
    add-int/lit8 v3, v4, -0x1

    .line 99
    move v1, v4

    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 103
    .end local v2    # "lo":I
    .end local v5    # "midTimeStamp":J
    .local v4, "lo":I
    move v2, v4

    .end local v4    # "lo":I
    .restart local v2    # "lo":I
    :goto_1
    goto :goto_0

    .line 104
    :cond_1
    return v1
.end method

.method public get(I)Landroid/app/usage/UsageEvents$Event;
    .locals 1
    .param p1, "index"    # I

    .line 59
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    return-object v0
.end method

.method public insert(Landroid/app/usage/UsageEvents$Event;)V
    .locals 5
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 69
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    .local v0, "size":I
    if-eqz v0, :cond_1

    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v3, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v1

    .line 78
    .local v1, "insertIndex":I
    iget-object v2, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    return-void

    .line 72
    .end local v1    # "insertIndex":I
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public size()I
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
