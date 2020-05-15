.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mExpanding:Z

.field private mHasComposition:Z

.field private mIsUserEdit:Z

.field private mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 6369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6370
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 6371
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 6521
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6523
    return v1

    .line 6526
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8000(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6528
    return v1

    .line 6534
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->access$8600(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->access$8600(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6541
    :cond_2
    if-ne p2, p3, :cond_3

    if-ne p5, p6, :cond_3

    .line 6543
    return v1

    .line 6546
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 6536
    :cond_4
    :goto_0
    return v1
.end method

.method private getLastEdit()Landroid/widget/Editor$EditOperation;
    .locals 4

    .line 6478
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8000(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 6479
    .local v0, "um":Landroid/content/UndoManager;
    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 6480
    invoke-static {v2}, Landroid/widget/Editor;->access$8400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    .line 6479
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v1

    check-cast v1, Landroid/widget/Editor$EditOperation;

    return-object v1
.end method

.method private handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I
    .param p7, "shouldCreateSeparateState"    # Z

    move-object v0, p0

    .line 6459
    invoke-direct {v0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6461
    :cond_0
    if-eqz p7, :cond_1

    .line 6462
    const/4 v2, 0x1

    goto :goto_1

    .line 6464
    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    .line 6460
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 6464
    .local v2, "mergeMode":I
    :goto_1
    nop

    .line 6467
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    .line 6468
    .local v9, "newText":Ljava/lang/String;
    invoke-static/range {p4 .. p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    .line 6469
    .local v10, "oldText":Ljava/lang/String;
    new-instance v11, Landroid/widget/Editor$EditOperation;

    iget-object v4, v0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v8, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    move-object v3, v11

    move-object v5, v10

    move/from16 v6, p5

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 6471
    .local v3, "edit":Landroid/widget/Editor$EditOperation;
    iget-boolean v4, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/widget/Editor$EditOperation;->access$8200(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/widget/Editor$EditOperation;->access$8300(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6472
    return-void

    .line 6474
    :cond_3
    invoke-direct {v0, v3, v2}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    .line 6475
    return-void
.end method

.method private static isComposition(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 6550
    instance-of v0, p0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6551
    return v1

    .line 6554
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    .line 6555
    .local v0, "text":Landroid/text/Spannable;
    invoke-static {v0}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 6556
    .local v2, "composeBegin":I
    invoke-static {v0}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 6557
    .local v3, "composeEnd":I
    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isInTextWatcher()Z
    .locals 2

    .line 6561
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6562
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 6563
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6562
    :goto_0
    return v1
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .locals 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "mergeMode"    # I

    .line 6488
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8000(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 6489
    .local v0, "um":Landroid/content/UndoManager;
    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 6490
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v1

    .line 6491
    .local v1, "lastEdit":Landroid/widget/Editor$EditOperation;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6494
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    .line 6495
    :cond_0
    if-nez p2, :cond_1

    .line 6499
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_0

    .line 6500
    :cond_1
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v3, :cond_2

    .line 6504
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$8400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 6505
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    .line 6506
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->access$8500(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 6512
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$8400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 6513
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 6515
    :goto_0
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 6516
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 6517
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .line 6392
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 6393
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 6397
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 6398
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 6399
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    move-object v8, p0

    .line 6410
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 6411
    return-object v9

    .line 6414
    :cond_0
    iget-boolean v10, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 6415
    .local v10, "hadComposition":Z
    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 6416
    iget-boolean v11, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 6417
    .local v11, "wasExpanding":Z
    const/4 v0, 0x0

    .line 6418
    .local v0, "shouldCreateSeparateState":Z
    sub-int v1, p3, p2

    sub-int v2, p6, p5

    if-eq v1, v2, :cond_2

    .line 6419
    sub-int v1, p3, p2

    sub-int v2, p6, p5

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 6420
    if-eqz v10, :cond_2

    iget-boolean v1, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eq v1, v11, :cond_2

    .line 6421
    const/4 v0, 0x1

    .line 6426
    .end local v0    # "shouldCreateSeparateState":Z
    .local v12, "shouldCreateSeparateState":Z
    :cond_2
    move v12, v0

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    .line 6427
    return-object v9
.end method

.method freezeLastEdit()V
    .locals 2

    .line 6431
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8000(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 6432
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    .line 6433
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-eqz v0, :cond_0

    .line 6434
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->access$8102(Landroid/widget/Editor$EditOperation;Z)Z

    .line 6436
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$8000(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 6437
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 6382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 6383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 6384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 6385
    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6374
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6375
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6376
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6377
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6378
    return-void
.end method
