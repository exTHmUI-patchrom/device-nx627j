.class Landroid/app/KeyguardManager$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/KeyguardManager;

    .line 516
    iput-object p1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    iput-object p3, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/-$$Lambda$KlsE01yvVI54Xvdo0TIjyhUKWHQ;

    invoke-direct {v2, v1}, Landroid/app/-$$Lambda$KlsE01yvVI54Xvdo0TIjyhUKWHQ;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/-$$Lambda$rztNj2LGZZegxvT34NFbOqZrZHM;

    invoke-direct {v2, v1}, Landroid/app/-$$Lambda$rztNj2LGZZegxvT34NFbOqZrZHM;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/-$$Lambda$YTMEV7TmbMrzjIag59qAffcsEUw;

    invoke-direct {v2, v1}, Landroid/app/-$$Lambda$YTMEV7TmbMrzjIag59qAffcsEUw;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    :cond_0
    return-void
.end method
