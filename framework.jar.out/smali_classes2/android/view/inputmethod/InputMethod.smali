.class public interface abstract Landroid/view/inputmethod/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethod$SessionCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.view.InputMethod"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.im"

.field public static final SHOW_EXPLICIT:I = 0x1

.field public static final SHOW_FORCED:I = 0x2


# virtual methods
.method public abstract attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public abstract changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
.end method

.method public dispatchStartInputWithToken(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;ZLandroid/os/IBinder;)V
    .locals 0
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z
    .param p4, "startInputToken"    # Landroid/os/IBinder;

    .line 190
    if-eqz p3, :cond_0

    .line 191
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 195
    :goto_0
    return-void
.end method

.method public abstract hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
.end method

.method public abstract setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
.end method

.method public abstract showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract unbindInput()V
.end method
