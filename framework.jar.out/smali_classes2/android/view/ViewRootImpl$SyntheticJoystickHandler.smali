.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticJoystickHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;
    }
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2


# instance fields
.field private final mDeviceKeyEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 6167
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 6168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 6164
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;-><init>(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 6165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    .line 6169
    return-void
.end method

.method static synthetic access$3500(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 6160
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel()V

    return-void
.end method

.method static synthetic access$3600(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 6160
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    return-object v0
.end method

.method private cancel()V
    .locals 6

    .line 6203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 6204
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 6205
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6206
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 6207
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 6208
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 6209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 6208
    invoke-static {v2, v4, v5, v0}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 6205
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6212
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6213
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->resetState()V

    .line 6214
    return-void
.end method

.method private update(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 6218
    .local v0, "historySize":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "h":I
    :goto_0
    const/16 v3, 0x10

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-ge v2, v0, :cond_0

    .line 6219
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v12

    .line 6220
    .local v12, "time":J
    iget-object v6, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/4 v10, 0x0

    .line 6221
    invoke-virtual {p1, v1, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v11

    .line 6220
    move-object v7, p1

    move-wide v8, v12

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6222
    iget-object v6, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/4 v10, 0x1

    .line 6223
    invoke-virtual {p1, v5, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v11

    .line 6222
    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6224
    iget-object v6, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/16 v10, 0xf

    .line 6225
    invoke-virtual {p1, v4, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v11

    .line 6224
    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6226
    iget-object v6, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/16 v10, 0x10

    .line 6227
    invoke-virtual {p1, v3, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v11

    .line 6226
    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6218
    .end local v12    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6229
    .end local v2    # "h":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    .line 6230
    .restart local v12    # "time":J
    iget-object v6, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/4 v10, 0x0

    .line 6231
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    .line 6230
    move-object v7, p1

    move-wide v8, v12

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6232
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/4 v9, 0x1

    .line 6233
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    .line 6232
    move-object v5, v1

    move-object v6, p1

    move-wide v7, v12

    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6234
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/16 v8, 0xf

    .line 6235
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    .line 6234
    move-object v4, v1

    move-object v5, p1

    move-wide v6, v12

    invoke-virtual/range {v4 .. v9}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6236
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    const/16 v7, 0x10

    .line 6237
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    .line 6236
    move-object v3, v1

    move-object v4, p1

    move-wide v5, v12

    invoke-virtual/range {v3 .. v8}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 6238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 6173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6176
    :pswitch_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    .line 6177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 6178
    .local v0, "oldEvent":Landroid/view/KeyEvent;
    nop

    .line 6179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 6178
    invoke-static {v0, v1, v2, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6180
    .local v1, "e":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 6181
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 6182
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6183
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6187
    .end local v0    # "oldEvent":Landroid/view/KeyEvent;
    .end local v1    # "e":Landroid/view/KeyEvent;
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6198
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1800(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6192
    :pswitch_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel()V

    .line 6193
    goto :goto_0

    .line 6195
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;)V

    .line 6196
    nop

    .line 6200
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
