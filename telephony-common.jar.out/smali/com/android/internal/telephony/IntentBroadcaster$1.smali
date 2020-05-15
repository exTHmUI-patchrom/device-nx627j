.class Lcom/android/internal/telephony/IntentBroadcaster$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IntentBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntentBroadcaster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IntentBroadcaster;

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-static {v1}, Lcom/android/internal/telephony/IntentBroadcaster;->access$000(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-static {v2}, Lcom/android/internal/telephony/IntentBroadcaster;->access$000(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 54
    .local v4, "i":Landroid/content/Intent;
    const-string v5, "rebroadcastOnUnlock"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 56
    iget-object v5, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebroadcasting intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ss"

    .line 57
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for slotId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IntentBroadcaster;->access$100(Lcom/android/internal/telephony/IntentBroadcaster;Ljava/lang/String;)V

    .line 59
    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 60
    .end local v3    # "pair":Ljava/util/Map$Entry;
    .end local v4    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 61
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 63
    :cond_1
    :goto_1
    return-void
.end method
