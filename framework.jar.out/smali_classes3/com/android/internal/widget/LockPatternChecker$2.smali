.class Lcom/android/internal/widget/LockPatternChecker$2;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field private patternCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$pattern:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .line 128
    :try_start_0
    const-string v0, "checkPattern->doInBackground"

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternChecker;->access$000(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->patternCopy:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/internal/widget/-$$Lambda$TTC7hNz7BTsLwhNRb2L5kl-7mdU;

    invoke-direct {v4, v3}, Lcom/android/internal/widget/-$$Lambda$TTC7hNz7BTsLwhNRb2L5kl-7mdU;-><init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    .line 132
    const-string v1, "LockPatternChecker"

    const-string v2, "doInBackground->checkPattern error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onCancelled()V

    .line 146
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 139
    const-string v0, "checkPattern->onPostExecute"

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternChecker;->access$000(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    .line 141
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$pattern:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->patternCopy:Ljava/util/List;

    .line 123
    return-void
.end method
