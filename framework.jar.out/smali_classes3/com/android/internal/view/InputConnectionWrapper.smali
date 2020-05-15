.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private final mInputMethodService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMissingMethods:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"    # I
    .param p4, "isUnbindIssued"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;",
            "Lcom/android/internal/view/IInputContext;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 244
    .local p1, "inputMethodService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/inputmethodservice/AbstractInputMethodService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    .line 246
    iput-object p2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 247
    iput p3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    .line 248
    iput-object p4, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 249
    return-void
.end method

.method private isMethodMissing(I)Z
    .locals 1
    .param p1, "methodFlag"    # I

    .line 624
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    const/4 v0, 0x1

    return v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    const/4 v0, 0x1

    return v0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public closeConnection()V
    .locals 0

    .line 584
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 382
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    return v1

    .line 387
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    const/4 v0, 0x1

    return v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 588
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 589
    return v1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 593
    .local v0, "result":Z
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    return v1

    .line 598
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/AbstractInputMethodService;

    .line 600
    .local v2, "inputMethodService":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v2, :cond_2

    .line 602
    return v1

    .line 604
    :cond_2
    invoke-virtual {v2, p1, p0}, Landroid/inputmethodservice/AbstractInputMethodService;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    .end local v2    # "inputMethodService":Landroid/inputmethodservice/AbstractInputMethodService;
    goto :goto_0

    .line 616
    :catch_0
    move-exception v2

    goto :goto_1

    .line 607
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 608
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v7, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputContext;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V

    .line 609
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 611
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_4

    .line 612
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCommitContentResult:Z

    move v0, v3

    .line 614
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 618
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 619
    return v0

    .line 614
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 616
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_1
    nop

    .line 617
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    const/4 v0, 0x1

    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    const/4 v0, 0x1

    return v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    const/4 v0, 0x1

    return v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 520
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 522
    return v1

    .line 525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingTextInCodePoints(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v0, 0x1

    return v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    const/4 v0, 0x1

    return v0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public finishComposingText()Z
    .locals 2

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    const/4 v0, 0x1

    return v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .param p1, "reqModes"    # I

    .line 326
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 327
    return v1

    .line 330
    :cond_0
    move v0, v1

    .line 332
    .local v0, "value":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 333
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v2}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    .line 334
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 336
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_1

    .line 337
    iget v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    move v0, v3

    .line 339
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 344
    return v0

    .line 339
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 341
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 349
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    return-object v1

    .line 353
    :cond_0
    move-object v0, v1

    .line 355
    .local v0, "value":Landroid/view/inputmethod/ExtractedText;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 356
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v2}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    .line 357
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 359
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_1

    .line 360
    iget-object v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, v3

    .line 362
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 367
    return-object v0

    .line 362
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 364
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 578
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .line 299
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    return-object v1

    .line 303
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    return-object v1

    .line 307
    :cond_1
    move-object v0, v1

    .line 309
    .local v0, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 310
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v2}, Lcom/android/internal/view/IInputContext;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    .line 311
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 313
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 316
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 321
    return-object v0

    .line 316
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 318
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 253
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    return-object v1

    .line 257
    :cond_0
    move-object v0, v1

    .line 259
    .local v0, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 260
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v2}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 261
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 263
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_1

    .line 264
    iget-object v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 266
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 271
    return-object v0

    .line 266
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 268
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 276
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    return-object v1

    .line 280
    :cond_0
    move-object v0, v1

    .line 282
    .local v0, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 283
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v2}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 284
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 286
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 289
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 294
    return-object v0

    .line 289
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 291
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public performContextMenuAction(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    const/4 v0, 0x1

    return v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public performEditorAction(I)Z
    .locals 2
    .param p1, "actionCode"    # I

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v0, 0x1

    return v0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v0, 0x1

    return v0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 5
    .param p1, "cursorUpdateMode"    # I

    .line 550
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIsUnbindIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 551
    return v1

    .line 554
    :cond_0
    const/4 v0, 0x0

    .line 555
    .local v0, "result":Z
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    return v1

    .line 560
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v2

    .line 561
    .local v2, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v2}, Lcom/android/internal/view/IInputContext;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    .line 562
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 564
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_2

    .line 565
    iget-boolean v3, v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mRequestUpdateCursorAnchorInfoResult:Z

    move v0, v3

    .line 567
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 571
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    nop

    .line 572
    return v0

    .line 567
    .restart local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 569
    .end local v2    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    const/4 v0, 0x1

    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setComposingRegion(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 436
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 438
    return v1

    .line 441
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    const/4 v0, 0x1

    return v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    const/4 v0, 0x1

    return v0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    const/4 v0, 0x1

    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputConnectionWrapper{idHash=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMissingMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    .line 633
    invoke-static {v1}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    return-object v0
.end method
