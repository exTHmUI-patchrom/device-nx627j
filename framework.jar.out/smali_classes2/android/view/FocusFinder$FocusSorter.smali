.class final Landroid/view/FocusFinder$FocusSorter;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FocusSorter"
.end annotation


# instance fields
.field private mLastPoolRect:I

.field private mRectByView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRtlMult:I

.field private mSidesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 789
    new-instance v0, Landroid/view/-$$Lambda$FocusFinder$FocusSorter$kW7K1t9q7Y62V38r-7g6xRzqqq8;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$FocusFinder$FocusSorter$kW7K1t9q7Y62V38r-7g6xRzqqq8;-><init>(Landroid/view/FocusFinder$FocusSorter;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    .line 804
    new-instance v0, Landroid/view/-$$Lambda$FocusFinder$FocusSorter$h0f2ZYL6peSaaEeCCkAoYs_YZvU;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$FocusFinder$FocusSorter$h0f2ZYL6peSaaEeCCkAoYs_YZvU;-><init>(Landroid/view/FocusFinder$FocusSorter;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 790
    if-ne p1, p2, :cond_0

    .line 791
    const/4 v0, 0x0

    return v0

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 795
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 797
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 798
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 799
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    return v3

    .line 801
    :cond_1
    return v2
.end method

.method public static synthetic lambda$new$1(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 805
    if-ne p1, p2, :cond_0

    .line 806
    const/4 v0, 0x0

    return v0

    .line 809
    :cond_0
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 810
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 812
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 813
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 814
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    return v3

    .line 816
    :cond_1
    iget v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    mul-int/2addr v3, v2

    return v3
.end method


# virtual methods
.method public sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 7
    .param p1, "views"    # [Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "root"    # Landroid/view/ViewGroup;
    .param p5, "isRtl"    # Z

    .line 820
    sub-int v0, p3, p2

    .line 821
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 822
    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 825
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 827
    :cond_1
    const/4 v1, 0x1

    if-eqz p5, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    .line 828
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 829
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 831
    .end local v2    # "i":I
    :cond_3
    move v2, p2

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p3, :cond_4

    .line 832
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    iget v4, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 833
    .local v3, "next":Landroid/graphics/Rect;
    aget-object v4, p1, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 834
    aget-object v4, p1, v2

    invoke-virtual {p4, v4, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 835
    iget-object v4, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .end local v3    # "next":Landroid/graphics/Rect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 839
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 841
    iget-object v2, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 842
    .local v2, "sweepBottom":I
    move v3, p2

    .line 843
    .local v3, "rowStart":I
    add-int/lit8 v4, p2, 0x1

    .line 844
    .local v4, "sweepIdx":I
    :goto_3
    if-ge v4, p3, :cond_7

    .line 845
    iget-object v5, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 846
    .local v5, "currRect":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-lt v6, v2, :cond_6

    .line 848
    sub-int v6, v4, v3

    if-le v6, v1, :cond_5

    .line 849
    iget-object v6, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 851
    :cond_5
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 852
    move v3, v4

    goto :goto_4

    .line 855
    :cond_6
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 844
    .end local v5    # "currRect":Landroid/graphics/Rect;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 859
    :cond_7
    sub-int v5, v4, v3

    if-le v5, v1, :cond_8

    .line 860
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 863
    :cond_8
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    .line 864
    iget-object v1, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 865
    return-void
.end method
