.class Lcom/android/server/am/NubiaSelfStartUtil$13;
.super Landroid/content/BroadcastReceiver;
.source "NubiaSelfStartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaSelfStartUtil;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaSelfStartUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 290
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil$13;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil$13;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-static {v1}, Lcom/android/server/am/NubiaSelfStartUtil;->access$2100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil$13;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->access$2102(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 296
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 297
    :cond_0
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil$13;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-static {v1}, Lcom/android/server/am/NubiaSelfStartUtil;->access$2100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 299
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil$13;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->access$2102(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 300
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 302
    :cond_1
    :goto_0
    return-void
.end method
