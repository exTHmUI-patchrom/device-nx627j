.class Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;
.super Landroid/os/Handler;
.source "QtiDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DdsSwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 246
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 247
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 253
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 254
    .local v1, "phoneId":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 258
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$102(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)I

    .line 263
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$300(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    .line 265
    .local v2, "voiceRat":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 266
    invoke-static {v4, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 265
    :goto_0
    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$002(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;Z)Z

    .line 271
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserDdsSubId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", voiceRat - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 274
    .end local v2    # "voiceRat":I
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    const-string v3, "EVENT_PRECISE_CALL_STATE_CHANGED"

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->access$600(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)V

    .line 281
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
