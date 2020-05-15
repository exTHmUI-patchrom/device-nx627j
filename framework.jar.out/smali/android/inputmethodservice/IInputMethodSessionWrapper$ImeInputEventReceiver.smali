.class final Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImeInputEventReceiver"
.end annotation


# instance fields
.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 216
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    .line 217
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 214
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    .line 218
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 245
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 246
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 247
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 248
    .local v1, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 249
    invoke-virtual {p0, v1, p2}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 251
    .end local v1    # "event":Landroid/view/InputEvent;
    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v0, v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 225
    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    .line 229
    .local v0, "seq":I
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_1

    .line 231
    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .line 232
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 233
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 234
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 235
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 241
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :goto_0
    return-void
.end method
