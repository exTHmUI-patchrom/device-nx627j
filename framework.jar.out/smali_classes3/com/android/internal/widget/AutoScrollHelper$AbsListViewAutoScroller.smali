.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "target"    # Landroid/widget/AbsListView;

    .line 875
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 877
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 878
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 9
    .param p1, "direction"    # I

    .line 893
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 894
    .local v0, "target":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 895
    .local v1, "itemCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 896
    return v2

    .line 899
    :cond_0
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 900
    .local v3, "childCount":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    .line 901
    .local v4, "firstPosition":I
    add-int v5, v4, v3

    .line 903
    .local v5, "lastPosition":I
    if-lez p1, :cond_2

    .line 905
    if-lt v5, v1, :cond_4

    .line 906
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 907
    .local v6, "lastView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 908
    return v2

    .line 910
    .end local v6    # "lastView":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 911
    :cond_2
    if-gez p1, :cond_5

    .line 913
    if-gtz v4, :cond_4

    .line 914
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 915
    .local v6, "firstView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_3

    .line 916
    return v2

    .line 918
    .end local v6    # "firstView":Landroid/view/View;
    :cond_3
    nop

    .line 925
    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 922
    :cond_5
    return v2
.end method

.method public scrollTargetBy(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .line 882
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 883
    return-void
.end method
