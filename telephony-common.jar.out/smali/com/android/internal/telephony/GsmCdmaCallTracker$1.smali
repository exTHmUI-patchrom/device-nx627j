.class Lcom/android/internal/telephony/GsmCdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "phoneinECMState"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    .local v0, "isInEcm":Z
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ACTION_EMERGENCY_CALLBACK_MODE_CHANGED isInEcm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 118
    if-nez v0, :cond_2

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "toNotify":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 132
    .local v3, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->onExitedEcmMode()V

    .line 135
    .end local v3    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_1
    goto :goto_0

    .line 138
    .end local v0    # "isInEcm":Z
    .end local v1    # "toNotify":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    return-void
.end method
