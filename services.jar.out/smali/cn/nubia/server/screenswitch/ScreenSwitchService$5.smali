.class Lcn/nubia/server/screenswitch/ScreenSwitchService$5;
.super Landroid/content/BroadcastReceiver;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 440
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 454
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postDisplayDialog(I)V

    .line 455
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "requestSwitchScreen 1 eventType=2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;I)V
    .locals 3
    .param p1, "type"    # I

    .line 486
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 487
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postDisplayDialog(I)V

    .line 488
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSwitchScreen 5 eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 445
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

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

    .line 447
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2402(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 449
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2502(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 451
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$PdhZFLSQ09yzh4_QddS3BirVf1U;

    invoke-direct {v5, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$PdhZFLSQ09yzh4_QddS3BirVf1U;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 460
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 461
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 463
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcn/nubia/server/screenswitch/MotionDetector;->setIsInCall(Z)V

    .line 464
    .end local v1    # "state":Ljava/lang/String;
    goto/16 :goto_6

    :cond_5
    const-string v1, "cn.nubia.action.AUDIO_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 465
    const-string/jumbo v1, "newMode"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 466
    .local v1, "newMode":I
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "ScreenSwitchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUDIO_MODE_CHANGED new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "newMode"

    .line 467
    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "caller"

    .line 468
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_6
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v2

    :goto_2
    invoke-static {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2902(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 470
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    goto :goto_4

    :cond_9
    :goto_3
    move v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Lcn/nubia/server/screenswitch/MotionDetector;->setIsInCall(Z)V

    .line 471
    .end local v1    # "newMode":I
    goto/16 :goto_6

    :cond_a
    const-string v1, "cn.nubia.camera.action.SWITCH_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_e

    .line 472
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "ScreenSwitchService"

    const-string/jumbo v5, "nubia camera need switch screen directly "

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_b
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 475
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 476
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Landroid/view/IApplicationToken;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 478
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    .line 479
    .local v1, "id":I
    if-eq v1, v4, :cond_d

    .line 480
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    if-nez v1, :cond_c

    move v2, v3

    nop

    :cond_c
    const-string/jumbo v3, "nubiacamera"

    invoke-static {v4, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3600(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILjava/lang/String;)V

    .line 482
    .end local v1    # "id":I
    :cond_d
    goto/16 :goto_6

    :cond_e
    const-string v1, "cn.nubia.action.SWITCH_SCREEN_GUIDE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 483
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 484
    .local v1, "type":I
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v5, 0x4

    if-ne v1, v5, :cond_f

    move v2, v3

    nop

    :cond_f
    invoke-static {v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3702(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 485
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;

    invoke-direct {v3, p0, v1}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    .end local v1    # "type":I
    goto/16 :goto_6

    :cond_10
    const-string v1, "cn.nubia.action.GAME_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 491
    const-string/jumbo v1, "isRunning"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 492
    .local v1, "running":Z
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    if-eq v2, v1, :cond_12

    .line 493
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

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

    .line 494
    :cond_11
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3802(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 495
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v2

    if-ne v2, v4, :cond_12

    .line 496
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 499
    .end local v1    # "running":Z
    :cond_12
    goto/16 :goto_6

    :cond_13
    const-string v1, "cn.nubia.action.DOUBLE_FP_ANIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 500
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_14

    move v2, v3

    nop

    :cond_14
    move v1, v2

    .line 501
    .local v1, "show":Z
    const-string v2, "ScreenSwitchService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recevie cn.nubia.action.DOUBLE_FP_ANIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v1, :cond_15

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 503
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->enable()V

    .line 504
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postShowDoubleFPAnim(Z)V

    goto :goto_5

    .line 506
    :cond_15
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 507
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postCloseDoubleFPAnim()V

    .line 509
    .end local v1    # "show":Z
    :goto_5
    goto :goto_6

    :cond_16
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 510
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 511
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 512
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postCloseDoubleFPAnim()V

    .line 514
    :cond_17
    :goto_6
    return-void
.end method
