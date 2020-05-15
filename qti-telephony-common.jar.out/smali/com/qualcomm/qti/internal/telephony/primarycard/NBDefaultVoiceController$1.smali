.class Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$1;
.super Landroid/content/BroadcastReceiver;
.source "NBDefaultVoiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    .line 81
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v1, "NBDefaultVoiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V

    goto :goto_0

    .line 89
    :cond_0
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "currentVoiceSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->storeLastDefaultVoiceIccid()V

    .line 95
    .end local v1    # "currentVoiceSubId":I
    :cond_1
    :goto_0
    return-void
.end method
