.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 4368
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 4371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4427
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4424
    :pswitch_1
    const-string v0, "MSG_APP_TRAVERSALS_TIMEOUT"

    return-object v0

    .line 4421
    :pswitch_2
    const-string v0, "MSG_DRAW_FINISHED"

    return-object v0

    .line 4419
    :pswitch_3
    const-string v0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object v0

    .line 4417
    :pswitch_4
    const-string v0, "MSG_UPDATE_POINTER_ICON"

    return-object v0

    .line 4415
    :pswitch_5
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    .line 4413
    :pswitch_6
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    .line 4411
    :pswitch_7
    const-string v0, "MSG_WINDOW_MOVED"

    return-object v0

    .line 4409
    :pswitch_8
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    .line 4407
    :pswitch_9
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    .line 4405
    :pswitch_a
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    .line 4403
    :pswitch_b
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    .line 4401
    :pswitch_c
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    .line 4399
    :pswitch_d
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    .line 4397
    :pswitch_e
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    .line 4395
    :pswitch_f
    const-string v0, "MSG_CHECK_FOCUS"

    return-object v0

    .line 4393
    :pswitch_10
    const-string v0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object v0

    .line 4391
    :pswitch_11
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    .line 4389
    :pswitch_12
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    .line 4387
    :pswitch_13
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    .line 4385
    :pswitch_14
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    .line 4383
    :pswitch_15
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    .line 4381
    :pswitch_16
    const-string v0, "MSG_RESIZED_REPORT"

    return-object v0

    .line 4379
    :pswitch_17
    const-string v0, "MSG_RESIZED"

    return-object v0

    .line 4377
    :pswitch_18
    const-string v0, "MSG_DIE"

    return-object v0

    .line 4375
    :pswitch_19
    const-string v0, "MSG_INVALIDATE_RECT"

    return-object v0

    .line 4373
    :pswitch_1a
    const-string v0, "MSG_INVALIDATE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4442
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 4648
    :pswitch_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_6

    .line 4644
    :pswitch_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 4645
    goto/16 :goto_6

    .line 4640
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v3, v4

    nop

    :cond_0
    move v0, v3

    .line 4641
    .local v0, "hasCapture":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;Z)V

    .line 4642
    .end local v0    # "hasCapture":Z
    goto/16 :goto_6

    .line 4636
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4637
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 4638
    .end local v0    # "event":Landroid/view/MotionEvent;
    goto/16 :goto_6

    .line 4631
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    .line 4632
    .local v0, "receiver":Lcom/android/internal/os/IResultReceiver;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4633
    .local v1, "deviceId":I
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 4634
    .end local v0    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "deviceId":I
    goto/16 :goto_6

    .line 4628
    :pswitch_6
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    .line 4629
    goto/16 :goto_6

    .line 4558
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 4559
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v3, 0x20

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4560
    .end local v0    # "event":Landroid/view/InputEvent;
    goto/16 :goto_6

    .line 4530
    :pswitch_8
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_10

    .line 4531
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4532
    .local v0, "w":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 4533
    .local v1, "h":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4534
    .local v2, "l":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4535
    .local v3, "t":I
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 4536
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v5, v2, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 4537
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 4538
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v5, v3, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 4540
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4541
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 4542
    .end local v0    # "w":I
    .end local v1    # "h":I
    .end local v2    # "l":I
    .end local v3    # "t":I
    goto/16 :goto_6

    .line 4623
    :pswitch_9
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 4624
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_6

    .line 4620
    :pswitch_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4621
    goto/16 :goto_6

    .line 4453
    :pswitch_b
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 4454
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 4455
    goto/16 :goto_6

    .line 4605
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    .line 4606
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 4607
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 4606
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4609
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4613
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 4614
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 4613
    invoke-virtual {v2, v0, v4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 4616
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-static {v2, v4, v3, v1}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    .line 4618
    .end local v0    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_6

    .line 4602
    :pswitch_d
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    .line 4603
    goto/16 :goto_6

    .line 4596
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DragEvent;

    .line 4598
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 4599
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    .line 4600
    .end local v0    # "event":Landroid/view/DragEvent;
    goto/16 :goto_6

    .line 4589
    :pswitch_f
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 4590
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4583
    :pswitch_10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4584
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 4585
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4587
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    goto/16 :goto_6

    .line 4579
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 4580
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4581
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_6

    .line 4565
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 4566
    .restart local v0    # "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4570
    nop

    .line 4571
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    .line 4570
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4573
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4574
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_6

    .line 4460
    :pswitch_13
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    .line 4461
    goto/16 :goto_6

    .line 4457
    :pswitch_14
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    move v3, v4

    nop

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    .line 4458
    goto/16 :goto_6

    .line 4551
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4552
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEvent;

    .line 4553
    .local v1, "event":Landroid/view/InputEvent;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputEventReceiver;

    .line 4554
    .local v2, "receiver":Landroid/view/InputEventReceiver;
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4555
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4556
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "event":Landroid/view/InputEvent;
    .end local v2    # "receiver":Landroid/view/InputEventReceiver;
    goto/16 :goto_6

    .line 4545
    :pswitch_16
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)V

    .line 4546
    goto/16 :goto_6

    .line 4464
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4465
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 4466
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4467
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 4468
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 4469
    invoke-virtual {v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v2

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4470
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 4471
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 4472
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-nez v2, :cond_5

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 4475
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v2, v5, :cond_5

    .line 4476
    goto/16 :goto_6

    .line 4480
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_5
    :pswitch_18
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_10

    .line 4481
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4483
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4484
    .local v2, "displayId":I
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/util/MergedConfiguration;

    .line 4485
    .local v5, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eq v6, v2, :cond_6

    move v6, v4

    goto :goto_0

    :cond_6
    move v6, v3

    .line 4487
    .local v6, "displayChanged":Z
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 4490
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 4491
    if-eqz v6, :cond_7

    .line 4492
    nop

    .line 4490
    move v1, v2

    goto :goto_1

    .line 4492
    :cond_7
    nop

    .line 4490
    :goto_1
    invoke-static {v7, v5, v3, v1}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    goto :goto_2

    .line 4493
    :cond_8
    if-eqz v6, :cond_9

    .line 4495
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 4498
    :cond_9
    :goto_2
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 4499
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4500
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 4501
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 4502
    invoke-virtual {v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v1

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4503
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 4504
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v4

    .line 4506
    .local v1, "framesChanged":Z
    :goto_4
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4507
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4508
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4509
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4510
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    check-cast v8, Landroid/view/DisplayCutout;

    invoke-virtual {v7, v8}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 4511
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4512
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4513
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4514
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v8, :cond_c

    move v8, v4

    goto :goto_5

    :cond_c
    move v8, v3

    :goto_5
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 4515
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v8, :cond_d

    move v3, v4

    nop

    :cond_d
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 4517
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4519
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_e

    .line 4520
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)V

    .line 4523
    :cond_e
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    .line 4524
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/View;)V

    .line 4526
    :cond_f
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 4527
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "framesChanged":Z
    .end local v2    # "displayId":I
    .end local v5    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v6    # "displayChanged":Z
    goto :goto_6

    .line 4548
    :pswitch_19
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 4549
    goto :goto_6

    .line 4447
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 4449
    .local v0, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 4450
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 4451
    goto :goto_6

    .line 4444
    .end local v0    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4445
    nop

    .line 4653
    :cond_10
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_17
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 4432
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4434
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4437
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
