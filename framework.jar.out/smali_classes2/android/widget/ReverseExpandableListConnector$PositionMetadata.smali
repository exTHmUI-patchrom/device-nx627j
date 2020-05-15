.class public Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ReverseExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ReverseExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ReverseExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

.field public position:Landroid/widget/ExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    .locals 3

    .line 1006
    sget-object v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1007
    :try_start_0
    sget-object v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1008
    sget-object v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    .line 1010
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    nop

    .line 1012
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    invoke-direct {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->resetState()V

    .line 1014
    return-object v1

    .line 1010
    .end local v1    # "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    invoke-direct {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1012
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    .locals 2
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    .line 997
    invoke-static {}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 998
    .local v0, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 999
    iput-object p4, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 1000
    iput p5, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1001
    return-object v0
.end method

.method private resetState()V
    .locals 2

    .line 981
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 983
    iput-object v1, p0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 985
    :cond_0
    iput-object v1, p0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 986
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 987
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .line 1033
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 3

    .line 1018
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->resetState()V

    .line 1019
    sget-object v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1020
    :try_start_0
    sget-object v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1021
    sget-object v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_0
    monitor-exit v0

    .line 1024
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
