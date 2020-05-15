.class public Landroid/app/ListFragment;
.super Landroid/app/Fragment;
.source "ListFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$1;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroid/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$2;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 179
    return-void
.end method

.method private ensureList()V
    .locals 4

    .line 386
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 393
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 394
    move-object v1, v0

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    goto :goto_1

    .line 396
    :cond_1
    const v1, 0x10202c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 398
    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 399
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    goto :goto_0

    .line 401
    :cond_2
    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :goto_0
    const v1, 0x1020395

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 404
    const v1, 0x10202e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 405
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 406
    .local v1, "rawListView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_8

    .line 411
    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 412
    iget-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_7

    .line 417
    iget-object v2, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 419
    :cond_3
    iget-object v2, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 420
    iget-object v2, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 424
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_4
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 425
    iget-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 426
    iget-object v1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 427
    iget-object v1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 428
    .local v1, "adapter":Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 429
    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 430
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_2

    .line 433
    :cond_5
    iget-object v1, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 434
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 437
    :cond_6
    :goto_2
    iget-object v1, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void

    .line 413
    .local v1, "rawListView":Landroid/view/View;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not yet created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setListShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 343
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 344
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 347
    iget-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    iput-boolean p1, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 351
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    if-eqz p1, :cond_2

    .line 352
    if-eqz p2, :cond_1

    .line 353
    iget-object v4, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 354
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 353
    invoke-static {v5, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    iget-object v3, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 356
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 355
    invoke-static {v4, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 359
    iget-object v2, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 361
    :goto_0
    iget-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 364
    :cond_2
    if-eqz p2, :cond_3

    .line 365
    iget-object v4, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 366
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 365
    invoke-static {v5, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v2, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 368
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 367
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 370
    :cond_3
    iget-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 371
    iget-object v2, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 373
    :goto_1
    iget-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :goto_2
    return-void

    .line 345
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 285
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 286
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 277
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 278
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 269
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 270
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 198
    const v0, 0x1090014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 216
    iget-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 219
    iput-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 220
    iput-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 222
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 236
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 207
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 208
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 209
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 295
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 296
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 303
    :cond_0
    iput-object p1, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 304
    return-void

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 242
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 243
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 244
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-boolean v3, p0, Landroid/app/ListFragment;->mListShown:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v2, v1}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 252
    :cond_2
    return-void
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 322
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 330
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 261
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 262
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 263
    return-void
.end method
