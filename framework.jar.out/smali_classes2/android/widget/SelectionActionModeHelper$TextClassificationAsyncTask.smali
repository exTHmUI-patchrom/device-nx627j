.class final Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOriginalText:Ljava/lang/String;

.field private final mSelectionResultCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionResultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextView:Landroid/widget/TextView;

.field private final mTimeOutDuration:I

.field private final mTimeOutResultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "timeOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;)V"
        }
    .end annotation

    .line 886
    .local p3, "selectionResultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/widget/SelectionActionModeHelper$SelectionResult;>;"
    .local p4, "selectionResultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/SelectionActionModeHelper$SelectionResult;>;"
    .local p5, "timeOutResultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/widget/SelectionActionModeHelper$SelectionResult;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/AsyncTask;-><init>(Landroid/os/Handler;)V

    .line 887
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 888
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    .line 889
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultSupplier:Ljava/util/function/Supplier;

    .line 890
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultCallback:Ljava/util/function/Consumer;

    .line 891
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutResultSupplier:Ljava/util/function/Supplier;

    .line 893
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mOriginalText:Ljava/lang/String;

    .line 894
    return-void
.end method

.method public static synthetic lambda$D5tkmK-caFBtl9ux2L0aUfUee4E(Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onTimeOut()V

    return-void
.end method

.method private onTimeOut()V
    .locals 2

    .line 914
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 915
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutResultSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 917
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->cancel(Z)Z

    .line 918
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 899
    new-instance v0, Landroid/widget/-$$Lambda$SelectionActionModeHelper$TextClassificationAsyncTask$D5tkmK-caFBtl9ux2L0aUfUee4E;

    .local v0, "onTimeOut":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$SelectionActionModeHelper$TextClassificationAsyncTask$D5tkmK-caFBtl9ux2L0aUfUee4E;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;)V

    .line 900
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 901
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 902
    .local v1, "result":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 903
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 864
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 909
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object p1, v0

    .line 910
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 911
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 864
    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {p0, p1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method
