.class Landroid/telecom/Logging/Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Logging/Runnable;


# direct methods
.method constructor <init>(Landroid/telecom/Logging/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Logging/Runnable;

    .line 31
    iput-object p1, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 34
    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->access$000(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 36
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->access$200(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-virtual {v2}, Landroid/telecom/Logging/Runnable;->loggedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 41
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2, v1}, Landroid/telecom/Logging/Runnable;->access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    .line 44
    :cond_0
    monitor-exit v0

    .line 45
    return-void

    .line 39
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 41
    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v3, v1}, Landroid/telecom/Logging/Runnable;->access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    :cond_1
    throw v2

    .line 44
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
