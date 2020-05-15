.class Landroid/service/textclassifier/TextClassifierService$1$1;
.super Ljava/lang/Object;
.source "TextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/TextClassifierService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/textclassifier/TextClassifierService$1;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/textclassifier/TextClassifierService$Callback<",
        "Landroid/view/textclassifier/TextSelection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/textclassifier/TextClassifierService$1;

.field final synthetic val$callback:Landroid/service/textclassifier/ITextSelectionCallback;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/service/textclassifier/ITextSelectionCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/textclassifier/TextClassifierService$1;

    .line 103
    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$1;->this$1:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$1$1;->val$callback:Landroid/service/textclassifier/ITextSelectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$1;->val$callback:Landroid/service/textclassifier/ITextSelectionCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextSelectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$1;->val$callback:Landroid/service/textclassifier/ITextSelectionCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextSelectionCallback;->onFailure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TextClassifierService"

    const-string v2, "Error calling callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/view/textclassifier/TextSelection;)V
    .locals 3
    .param p1, "result"    # Landroid/view/textclassifier/TextSelection;

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$1;->val$callback:Landroid/service/textclassifier/ITextSelectionCallback;

    invoke-interface {v0, p1}, Landroid/service/textclassifier/ITextSelectionCallback;->onSuccess(Landroid/view/textclassifier/TextSelection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TextClassifierService"

    const-string v2, "Error calling callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Landroid/view/textclassifier/TextSelection;

    invoke-virtual {p0, p1}, Landroid/service/textclassifier/TextClassifierService$1$1;->onSuccess(Landroid/view/textclassifier/TextSelection;)V

    return-void
.end method
