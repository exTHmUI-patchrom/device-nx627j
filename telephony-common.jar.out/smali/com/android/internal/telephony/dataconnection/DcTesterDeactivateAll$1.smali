.class Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterDeactivateAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sIntentReceiver.onReceive: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .line 53
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$100(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: unknown action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 54
    :cond_1
    :goto_0
    const-string v1, "Send DEACTIVATE to all Dcc\'s"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 57
    .local v2, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownNow()V

    .line 58
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_1

    .line 60
    :cond_2
    const-string v1, "onReceive: mDcc is null, ignoring"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    .line 65
    :cond_3
    :goto_2
    return-void
.end method
