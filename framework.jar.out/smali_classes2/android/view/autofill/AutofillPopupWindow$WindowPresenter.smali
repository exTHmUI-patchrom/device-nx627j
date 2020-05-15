.class Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
.super Ljava/lang/Object;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowPresenter"
.end annotation


# instance fields
.field final mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

.field final synthetic this$0:Landroid/view/autofill/AutofillPopupWindow;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0
    .param p2, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 389
    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    .line 391
    return-void
.end method


# virtual methods
.method hide(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "transitionEpicenter"    # Landroid/graphics/Rect;

    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutofillWindowPresenter;->hide(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillPopupWindow"

    const-string v2, "Error hiding fill window"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transitionEpicenter"    # Landroid/graphics/Rect;
    .param p3, "fitsSystemWindows"    # Z
    .param p4, "layoutDirection"    # I

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autofill/IAutofillWindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillPopupWindow"

    const-string v2, "Error showing fill window"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
