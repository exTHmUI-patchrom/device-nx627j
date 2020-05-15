.class public abstract Lcom/android/internal/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6224
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6225
    new-instance v0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    .line 6226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6328
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6329
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6330
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6332
    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6335
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6336
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6337
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6338
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6339
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_1

    .line 6340
    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iput-boolean v1, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6342
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6343
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 6313
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6314
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6315
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6316
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6317
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 6386
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 6358
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 6496
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 6404
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 6583
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6584
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .line 6599
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6600
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 6627
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6628
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .line 6692
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6693
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 6707
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 6708
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6645
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6646
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 6675
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6676
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6726
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6727
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6760
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6761
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .line 6743
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6744
    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 6542
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6303
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 6304
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 6551
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 6462
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6476
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6488
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6425
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    .line 6516
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6517
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .line 6370
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6374
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 6375
    return-void

    .line 6371
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    .line 6530
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6531
    return-void
.end method
