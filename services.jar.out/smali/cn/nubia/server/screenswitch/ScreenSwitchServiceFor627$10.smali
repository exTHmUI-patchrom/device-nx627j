.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;
.super Landroid/content/BroadcastReceiver;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 591
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;)V
    .locals 2

    .line 604
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 605
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postDisplayDialog(I)V

    .line 606
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "requestSwitchScreen 1 eventType=2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;I)V
    .locals 3
    .param p1, "type"    # I

    .line 639
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 640
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postDisplayDialog(I)V

    .line 641
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSwitchScreen 5 eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 596
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ScreenSwitchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PHONE_STATE_CHANGED state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", incomingNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "incoming_number"

    .line 598
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 597
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 600
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 602
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$10$FS5nOGkvRx2MDwuLd3rqusXTe1E;

    invoke-direct {v5, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$10$FS5nOGkvRx2MDwuLd3rqusXTe1E;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 611
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 612
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 614
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    nop

    :cond_4
    :goto_0
    invoke-virtual {v4, v2}, Lcn/nubia/server/screenswitch/MotionDetector;->setIsInCall(Z)V

    .line 615
    .end local v1    # "state":Ljava/lang/String;
    goto/16 :goto_5

    :cond_5
    const-string v1, "cn.nubia.action.AUDIO_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    const-string/jumbo v1, "newMode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 617
    .local v1, "newMode":I
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "ScreenSwitchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUDIO_MODE_CHANGED new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "newMode"

    .line 618
    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "caller"

    .line 619
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 617
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_6
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    move v5, v2

    goto :goto_1

    :cond_7
    move v5, v3

    :goto_1
    invoke-static {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4302(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 621
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    nop

    :cond_9
    :goto_2
    invoke-virtual {v4, v2}, Lcn/nubia/server/screenswitch/MotionDetector;->setIsInCall(Z)V

    .line 622
    if-nez v1, :cond_a

    .line 624
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 626
    .end local v1    # "newMode":I
    :cond_a
    goto/16 :goto_5

    :cond_b
    const-string v1, "cn.nubia.camera.action.SWITCH_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_e

    .line 627
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ScreenSwitchService"

    const-string/jumbo v5, "nubia camera need switch screen directly "

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_c
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 630
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 631
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$4800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Landroid/view/IApplicationToken;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 633
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    .line 634
    .local v1, "id":I
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    if-ne v1, v2, :cond_d

    move v2, v3

    nop

    :cond_d
    const-string/jumbo v3, "nubiacamera"

    invoke-static {v4, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;)V

    .line 635
    .end local v1    # "id":I
    goto/16 :goto_5

    :cond_e
    const-string v1, "cn.nubia.action.SWITCH_SCREEN_GUIDE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 636
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 637
    .local v1, "type":I
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v5, 0x4

    if-ne v1, v5, :cond_f

    goto :goto_3

    :cond_f
    move v2, v3

    :goto_3
    invoke-static {v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 638
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$10$7LkEOH6Nl-RCOGtNBw9VmNzRsgs;

    invoke-direct {v3, p0, v1}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$10$7LkEOH6Nl-RCOGtNBw9VmNzRsgs;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    .end local v1    # "type":I
    goto/16 :goto_5

    :cond_10
    const-string v1, "cn.nubia.action.GAME_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 644
    const-string/jumbo v1, "isRunning"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 645
    .local v1, "running":Z
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v2

    if-eq v2, v1, :cond_12

    .line 646
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Game mode change into "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_11
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 648
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v2

    if-ne v2, v4, :cond_12

    .line 649
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 652
    .end local v1    # "running":Z
    :cond_12
    goto/16 :goto_5

    :cond_13
    const-string v1, "cn.nubia.action.DOUBLE_FP_ANIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 653
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_14

    goto :goto_4

    :cond_14
    move v2, v3

    :goto_4
    move v1, v2

    .line 654
    .local v1, "show":Z
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recevie cn.nubia.action.DOUBLE_FP_ANIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const-class v3, Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-static {v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {v2, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->setPressSensorActive(Z)V

    .line 656
    .end local v1    # "show":Z
    goto :goto_5

    :cond_15
    const-string v1, "cn.nubia.systemui.NOTIFICATION_EXPAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 657
    const-string v1, "expand"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 658
    .local v1, "expand":Z
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recevie NOTIFICATION_EXPAND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 660
    .end local v1    # "expand":Z
    goto :goto_5

    :cond_16
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 661
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 662
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 663
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postCloseDoubleFPAnim()V

    .line 665
    :cond_17
    :goto_5
    return-void
.end method
