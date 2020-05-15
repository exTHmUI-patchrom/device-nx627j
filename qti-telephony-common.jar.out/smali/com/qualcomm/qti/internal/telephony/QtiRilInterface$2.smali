.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 607
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 610
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 611
    const-string v0, "qualcomm.intent.action.ACTION_ADN_INIT_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 612
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 617
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 619
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 620
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)[Landroid/os/RegistrantList;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 623
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":I
    goto/16 :goto_1

    :cond_0
    const-string v0, "qualcomm.intent.action.ACTION_ADN_RECORDS_IND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const-string v0, "adn_records"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 630
    .local v0, "data":[B
    const-string v3, "phone"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 632
    .restart local v1    # "phoneId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 633
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v4, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$600(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[B)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 634
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$700(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)[Landroid/os/RegistrantList;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 637
    .end local v0    # "data":[B
    .end local v1    # "phoneId":I
    .end local v2    # "ar":Landroid/os/AsyncResult;
    goto :goto_1

    :cond_1
    const-string v0, "nblog.state_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    const-string v0, "nblog.state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "nblog.logTypes"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "logType":Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 641
    .local v2, "isStart":Z
    const-string v3, "QtiRilInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received and broadcast start account operator :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eqz v2, :cond_2

    const-string v3, "MPSSDump"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 643
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 644
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$800(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->StartOrEndAccount(ZI)V

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "logType":Ljava/lang/String;
    .end local v2    # "isStart":Z
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-void
.end method
