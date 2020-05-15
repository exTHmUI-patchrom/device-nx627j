.class Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;
.super Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    .line 4873
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4874
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 4878
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4879
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4881
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 4882
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4883
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4885
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 4889
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4890
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4891
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4893
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4897
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4898
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4899
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4901
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 4913
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4914
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4915
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4917
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4905
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4906
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4907
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4909
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .line 4920
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 4921
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 4924
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4926
    :goto_0
    return-void
.end method
