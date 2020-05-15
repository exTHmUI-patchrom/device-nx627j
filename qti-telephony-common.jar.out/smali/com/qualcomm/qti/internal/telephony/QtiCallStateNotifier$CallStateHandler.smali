.class Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;
.super Landroid/os/Handler;
.source "QtiCallStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
    .param p2, "x1"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$1;

    .line 158
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    .local v1, "phoneId":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 166
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallStateChanged: call active on phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->log(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$102(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Z)Z

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$300(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCallStateChanged: call disconnected on phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->log(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$102(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Z)Z

    .line 174
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$402(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Z)Z

    .line 175
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCallStateChanged: call started on phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->log(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->access$402(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Z)Z

    .line 186
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
