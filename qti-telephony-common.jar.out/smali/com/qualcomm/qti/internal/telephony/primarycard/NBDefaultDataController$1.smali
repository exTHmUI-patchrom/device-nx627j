.class Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;
.super Landroid/content/BroadcastReceiver;
.source "NBDefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 110
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Ljava/lang/String;)V

    .line 115
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->removeMessages(I)V

    .line 118
    const-string v1, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "newProvisionState"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 122
    .local v3, "newProvisionState":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)[I

    move-result-object v4

    aput v3, v4, v1

    .line 124
    .end local v3    # "newProvisionState":I
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v3

    .line 125
    .local v3, "activeSubCount":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeSubCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mCurrentPref[0]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 126
    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mCurrentPref[1]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Ljava/lang/String;)V

    .line 127
    sget v4, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 128
    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)[I

    move-result-object v4

    aget v4, v4, v7

    if-ne v4, v8, :cond_1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)[I

    move-result-object v4

    aget v4, v4, v8

    if-ne v4, v8, :cond_1

    .line 129
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 132
    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0xbb8

    .line 131
    invoke-virtual {v4, v2, v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    .end local v1    # "phoneId":I
    .end local v3    # "activeSubCount":I
    :goto_0
    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$300(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    goto :goto_1

    .line 137
    :cond_3
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$400(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V

    goto :goto_1

    .line 139
    :cond_4
    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V

    .line 142
    :cond_5
    :goto_1
    return-void
.end method
