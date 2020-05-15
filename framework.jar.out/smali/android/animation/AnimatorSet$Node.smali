.class Landroid/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mAnimation:Landroid/animation/Animator;

.field mChildNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mEndTime:J

.field mEnded:Z

.field mLatestParent:Landroid/animation/AnimatorSet$Node;

.field mParents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mParentsAdded:Z

.field mSiblings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field mTotalDuration:J


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1765
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1772
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1790
    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1792
    iput-boolean v1, p0, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1793
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1794
    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1795
    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1805
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1806
    return-void
.end method


# virtual methods
.method addChild(Landroid/animation/AnimatorSet$Node;)V
    .locals 1
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 1830
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1833
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1834
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1837
    :cond_1
    return-void
.end method

.method public addParent(Landroid/animation/AnimatorSet$Node;)V
    .locals 1
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 1850
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 1853
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1854
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addChild(Landroid/animation/AnimatorSet$Node;)V

    .line 1857
    :cond_1
    return-void
.end method

.method public addParents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1860
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    if-nez p1, :cond_0

    .line 1861
    return-void

    .line 1863
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1864
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1865
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1864
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1867
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public addSibling(Landroid/animation/AnimatorSet$Node;)V
    .locals 1
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 1840
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 1843
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1844
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addSibling(Landroid/animation/AnimatorSet$Node;)V

    .line 1847
    :cond_1
    return-void
.end method

.method public clone()Landroid/animation/AnimatorSet$Node;
    .locals 3

    .line 1811
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1812
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1813
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1814
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1816
    :cond_0
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1817
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 1819
    :cond_1
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1820
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 1822
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/AnimatorSet$Node;->mEnded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    return-object v0

    .line 1824
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1758
    invoke-virtual {p0}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
