.class Lcom/android/internal/widget/LockPatternChecker$1;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
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
        "[B>;"
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

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-wide p3, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$challenge:J

    iput p5, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$userId:I

    iput-object p6, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->patternCopy:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$challenge:J

    iget v4, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$userId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->mThrottleTimeout:I

    .line 89
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "result"    # [B

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    .line 96
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->patternCopy:Ljava/util/List;

    .line 81
    return-void
.end method
