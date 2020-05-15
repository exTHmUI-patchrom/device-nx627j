.class final Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
.super Ljava/lang/Object;
.source "SystemTextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SystemTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResponseReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 227
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/textclassifier/SystemTextClassifier$1;

    .line 227
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    invoke-direct {p0}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public onFailure()V
    .locals 3

    .line 239
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    const-string v0, "SystemTextClassifier"

    const-string v1, "Request failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 241
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 234
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mResponse:Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 236
    return-void
.end method
