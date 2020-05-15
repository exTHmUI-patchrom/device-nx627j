.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field private static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .line 89
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 90
    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 91
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 92
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 93
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .line 193
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 194
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    .line 179
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 180
    return-void
.end method

.method public closeConnection()V
    .locals 1

    .line 211
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 143
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 216
    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 147
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 139
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 183
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 188
    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 227
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 197
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 581
    const-string v0, "IInputConnectionWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void

    .line 552
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 553
    .local v0, "flags":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 555
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContextCallback;

    .line 556
    .local v3, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 557
    .local v4, "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 558
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 563
    :cond_0
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/view/inputmethod/InputContentInfo;

    .line 564
    .local v6, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 570
    :cond_1
    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 571
    invoke-interface {v5, v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v1

    .line 572
    .local v1, "result":Z
    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    .end local v1    # "result":Z
    .end local v3    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v4    # "callbackSeq":I
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    goto :goto_2

    .line 565
    .restart local v3    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v4    # "callbackSeq":I
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    :cond_2
    :goto_0
    const-string v7, "IInputConnectionWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "commitContent with invalid inputContentInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 568
    return-void

    .line 559
    .end local v6    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    :cond_3
    :goto_1
    :try_start_1
    const-string v6, "IInputConnectionWrapper"

    const-string v7, "commitContent on inactive InputConnection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 561
    return-void

    .line 576
    .end local v3    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v4    # "callbackSeq":I
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling commitContent"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 577
    nop

    .line 578
    return-void

    .line 576
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 526
    .end local v0    # "flags":I
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    return-void

    .line 530
    :cond_4
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 535
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_5

    .line 544
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    :try_start_4
    iput-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 546
    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 547
    monitor-exit v3

    .line 536
    return-void

    .line 547
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 539
    :cond_5
    :try_start_5
    invoke-static {v1}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    .line 540
    .local v3, "missingMethods":I
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_6

    .line 541
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 544
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "missingMethods":I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_6
    iput-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 546
    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 547
    monitor-exit v1

    .line 548
    nop

    .line 549
    return-void

    .line 547
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 544
    :catchall_3
    move-exception v1

    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    :try_start_7
    iput-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 546
    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 547
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 502
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 504
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 505
    .local v2, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 506
    .local v3, "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 507
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    .line 512
    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 513
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v1

    .line 512
    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_5

    .line 508
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v3    # "callbackSeq":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_8
    :goto_4
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 517
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 510
    return-void

    .line 517
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_5
    move-exception v1

    goto :goto_6

    .line 514
    :catch_1
    move-exception v1

    .line 515
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 517
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 441
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 442
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    .line 446
    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 447
    return-void

    .line 443
    :cond_a
    :goto_7
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 486
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 488
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 489
    .local v1, "action":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 490
    .local v2, "data":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 491
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_8

    .line 495
    :cond_b
    invoke-interface {v3, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 497
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 498
    nop

    .line 499
    return-void

    .line 492
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "data":Landroid/os/Bundle;
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_c
    :goto_8
    :try_start_c
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "performPrivateCommand on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 497
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 493
    return-void

    .line 497
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_6
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 477
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 478
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_9

    .line 482
    :cond_d
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 483
    return-void

    .line 479
    :cond_e
    :goto_9
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "endBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 468
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 469
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 473
    :cond_f
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 474
    return-void

    .line 470
    :cond_10
    :goto_a
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "beginBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void

    .line 431
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 432
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_b

    .line 436
    :cond_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 438
    return-void

    .line 433
    :cond_12
    :goto_b
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 410
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 416
    return-void

    .line 418
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 423
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_14

    .line 424
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "finishComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 427
    :cond_14
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 428
    return-void

    .line 401
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 402
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_c

    .line 406
    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 407
    return-void

    .line 403
    :cond_16
    :goto_c
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "setComposingRegion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 336
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 337
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_d

    .line 341
    :cond_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 343
    return-void

    .line 338
    :cond_18
    :goto_d
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 316
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 318
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 319
    .local v1, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 320
    .local v3, "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 321
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_e

    .line 326
    :cond_19
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_f

    .line 322
    .restart local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v3    # "callbackSeq":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1a
    :goto_e
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getExtractedText on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 331
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 324
    return-void

    .line 331
    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_7
    move-exception v1

    goto :goto_10

    .line 328
    :catch_2
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setExtractedText"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 331
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 296
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 298
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 299
    .local v2, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 300
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 301
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_11

    .line 306
    :cond_1b
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_12

    .line 302
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v3    # "callbackSeq":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1c
    :goto_11
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 304
    return-void

    .line 311
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_8
    move-exception v1

    goto :goto_13

    .line 308
    :catch_3
    move-exception v1

    .line 309
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_10
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 312
    nop

    .line 313
    return-void

    .line 311
    :goto_13
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 276
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 278
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_11
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 279
    .local v1, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 280
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 281
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_14

    .line 286
    :cond_1d
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_15

    .line 282
    .restart local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v3    # "callbackSeq":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1e
    :goto_14
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getSelectedText on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 291
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 284
    return-void

    .line 291
    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_9
    move-exception v1

    goto :goto_16

    .line 288
    :catch_4
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_12
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setSelectedText"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 291
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :goto_16
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 256
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 258
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_13
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 259
    .local v1, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 260
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 261
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_17

    .line 266
    :cond_1f
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_18

    .line 262
    .restart local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v3    # "callbackSeq":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_20
    :goto_17
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 264
    return-void

    .line 271
    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_a
    move-exception v1

    goto :goto_19

    .line 268
    :catch_5
    move-exception v1

    .line 269
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 271
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :goto_19
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 236
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 238
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_15
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    .line 239
    .local v1, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 240
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 241
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_1a

    .line 246
    :cond_21
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_1b

    .line 242
    .restart local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .restart local v3    # "callbackSeq":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_22
    :goto_1a
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 251
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 244
    return-void

    .line 251
    .end local v1    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_b
    move-exception v1

    goto :goto_1c

    .line 248
    :catch_6
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 251
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :goto_1c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 459
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 460
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_1d

    .line 464
    :cond_23
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    .line 465
    return-void

    .line 461
    :cond_24
    :goto_1d
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 450
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 451
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_1e

    .line 455
    :cond_25
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 456
    return-void

    .line 452
    :cond_26
    :goto_1e
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 391
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 392
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_1f

    .line 396
    :cond_27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 398
    return-void

    .line 393
    :cond_28
    :goto_1f
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "setComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 364
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 365
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_20

    .line 369
    :cond_29
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 370
    return-void

    .line 366
    :cond_2a
    :goto_20
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 355
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 356
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_21

    .line 360
    :cond_2b
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 361
    return-void

    .line 357
    :cond_2c
    :goto_21
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 346
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 347
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_22

    .line 351
    :cond_2d
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 352
    return-void

    .line 348
    :cond_2e
    :goto_22
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 382
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 383
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_23

    .line 387
    :cond_2f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 388
    return-void

    .line 384
    :cond_30
    :goto_23
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "commitCorrection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 373
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 374
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_24

    .line 378
    :cond_31
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 379
    return-void

    .line 375
    :cond_32
    :goto_24
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "commitCompletion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3f -> :sswitch_9
        0x41 -> :sswitch_8
        0x46 -> :sswitch_7
        0x5a -> :sswitch_6
        0x5f -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8c -> :sswitch_2
        0x96 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    .line 171
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 172
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 129
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 130
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 134
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 136
    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    monitor-exit v0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 125
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 117
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 118
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 121
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 122
    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    monitor-exit v0

    return v1

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .line 585
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 589
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "callbackSeq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 605
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 606
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 607
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 608
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "objArg1"    # Ljava/lang/Object;
    .param p4, "objArg2"    # Ljava/lang/Object;
    .param p5, "callbackSeq"    # I
    .param p6, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 613
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 614
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 615
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 616
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 617
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 618
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "callbackSeq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 623
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 624
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 625
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 626
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 627
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "callbackSeq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 597
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 598
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 599
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 600
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 635
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 636
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 637
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 638
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .param p1, "id"    # I

    .line 159
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .param p1, "id"    # I

    .line 155
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 156
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 201
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .line 206
    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 175
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 163
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 167
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 151
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 152
    return-void
.end method
