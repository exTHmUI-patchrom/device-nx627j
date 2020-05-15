.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# static fields
.field private static final INSERT_AT_END_INDEX:I = -0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .line 3778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3779
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 3780
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/widget/RemoteViews$1;

    .line 3773
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews$ViewTree;

    .line 3773
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews$ViewTree;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 3773
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addViewChild(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 3854
    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    return-void

    .line 3861
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3862
    new-instance v0, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    .line 3863
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3864
    nop

    .line 3865
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    goto :goto_0

    .line 3866
    .end local v0    # "target":Landroid/widget/RemoteViews$ViewTree;
    :cond_1
    move-object v0, p0

    .line 3869
    .restart local v0    # "target":Landroid/widget/RemoteViews$ViewTree;
    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 3870
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 3871
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 3872
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3873
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3874
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 3875
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 3874
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3879
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 1
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    .line 3828
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 3829
    return-void
.end method

.method public addChild(Landroid/widget/RemoteViews$ViewTree;I)V
    .locals 1
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "index"    # I

    .line 3837
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 3840
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 3842
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 3843
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3844
    return-void

    .line 3847
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3848
    return-void
.end method

.method public createTree()V
    .locals 4

    .line 3783
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3784
    return-void

    .line 3787
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 3788
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3789
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 3790
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3791
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3792
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 3791
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3795
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3820
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3821
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3823
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 3824
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    :goto_0
    return-object v1
.end method

.method public findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .locals 4
    .param p1, "id"    # I

    .line 3798
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3799
    return-object p0

    .line 3801
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3802
    return-object v1

    .line 3804
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    .line 3805
    .local v2, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 3806
    .local v3, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v3, :cond_2

    .line 3807
    return-object v3

    .line 3809
    .end local v2    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .end local v3    # "result":Landroid/widget/RemoteViews$ViewTree;
    :cond_2
    goto :goto_0

    .line 3810
    :cond_3
    return-object v1
.end method

.method public replaceView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 3814
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 3815
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 3816
    invoke-virtual {p0}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 3817
    return-void
.end method
