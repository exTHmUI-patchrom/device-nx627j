.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1714
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1720
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/RelativeLayout$1;

    .line 1704
    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$DependencyGraph;

    .line 1704
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    return-object v0
.end method

.method private findRoots([I)Ljava/util/ArrayDeque;
    .locals 13
    .param p1, "rulesFilter"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1805
    .local v0, "keyNodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    iget-object v1, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1806
    .local v1, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1810
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1811
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1812
    .local v5, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1813
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 1810
    .end local v5    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1817
    .end local v4    # "i":I
    :cond_0
    move v4, v3

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 1818
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1820
    .restart local v5    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1821
    .local v6, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v7

    .line 1822
    .local v7, "rules":[I
    array-length v8, p1

    .line 1826
    .local v8, "rulesCount":I
    move v9, v3

    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 1827
    aget v10, p1, v9

    aget v10, v7, v10

    .line 1828
    .local v10, "rule":I
    if-lez v10, :cond_2

    .line 1830
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1832
    .local v11, "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v11, :cond_2

    if-ne v11, v5, :cond_1

    .line 1833
    goto :goto_3

    .line 1836
    :cond_1
    iget-object v12, v11, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    iget-object v12, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1826
    .end local v10    # "rule":I
    .end local v11    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1817
    .end local v5    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v6    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "rules":[I
    .end local v8    # "rulesCount":I
    .end local v9    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1843
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    .line 1844
    .local v4, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 1847
    nop

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 1848
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1849
    .restart local v5    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1847
    .end local v5    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1852
    .end local v3    # "i":I
    :cond_6
    return-object v4
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1744
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1745
    .local v0, "id":I
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v1

    .line 1747
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1748
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1751
    :cond_0
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    return-void
.end method

.method clear()V
    .locals 4

    .line 1726
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1727
    .local v0, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1729
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1730
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    .line 1729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1732
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1734
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1735
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 1736
    return-void
.end method

.method varargs getSortedViews([Landroid/view/View;[I)V
    .locals 12
    .param p1, "sorted"    # [Landroid/view/View;
    .param p2, "rules"    # [I

    .line 1765
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 1766
    .local v0, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    const/4 v1, 0x0

    move v2, v1

    .line 1769
    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-object v4, v3

    .local v4, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v3, :cond_2

    .line 1770
    iget-object v3, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1771
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    .line 1773
    .local v5, "key":I
    add-int/lit8 v6, v2, 0x1

    .local v6, "index":I
    aput-object v3, p1, v2

    .line 1775
    .end local v2    # "index":I
    iget-object v2, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    .line 1776
    .local v2, "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1777
    .local v7, "count":I
    move v8, v1

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 1778
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1779
    .local v9, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v10, v9, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 1781
    .local v10, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1782
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 1783
    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1777
    .end local v9    # "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v10    # "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1786
    .end local v2    # "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "key":I
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_1
    nop

    .line 1766
    move v2, v6

    goto :goto_0

    .line 1788
    .end local v6    # "index":I
    .local v2, "index":I
    :cond_2
    array-length v1, p1

    if-lt v2, v1, :cond_3

    .line 1792
    return-void

    .line 1789
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
