.class public abstract Landroid/inputmethodservice/AbstractInputMethodService;
.super Landroid/app/Service;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;,
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    }
.end annotation


# instance fields
.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private mInputMethod:Landroid/view/inputmethod/InputMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 203
    return-void
.end method

.method public exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .line 252
    return-void
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    .line 210
    :cond_0
    new-instance v0, Landroid/inputmethodservice/IInputMethodWrapper;

    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/IInputMethodWrapper;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V

    return-object v0
.end method

.method public abstract onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 221
    const/4 v0, 0x0

    return v0
.end method
