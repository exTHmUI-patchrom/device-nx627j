.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;

    .line 2228
    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, "isFinalRemoval":Z
    const/4 v1, 0x0

    .line 2234
    .local v1, "toThrow":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    goto :goto_0

    .line 2235
    :catch_0
    move-exception v2

    .line 2236
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v1, v2

    .line 2238
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    monitor-enter v2

    .line 2239
    :try_start_1
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2240
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2241
    const/4 v0, 0x1

    .line 2243
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2244
    if-eqz v0, :cond_1

    .line 2245
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v2}, Landroid/telecom/Call;->access$200(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v2, v3}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 2247
    :cond_1
    if-nez v1, :cond_2

    .line 2250
    return-void

    .line 2248
    :cond_2
    throw v1

    .line 2243
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
