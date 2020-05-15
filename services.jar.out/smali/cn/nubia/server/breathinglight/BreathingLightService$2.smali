.class Lcn/nubia/server/breathinglight/BreathingLightService$2;
.super Landroid/content/BroadcastReceiver;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 327
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$100(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    goto/16 :goto_4

    .line 334
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x38

    const/16 v3, 0x40

    const/16 v4, 0x30

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 336
    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v5, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_1

    .line 338
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v4, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 339
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v3, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_1

    .line 344
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v2, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 346
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$500(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v1

    const/4 v2, 0x2

    .line 347
    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 348
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$600(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->updateAutoBrightnessState(Z)V

    .line 349
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$700(Lcn/nubia/server/breathinglight/BreathingLightService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 350
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto/16 :goto_4

    .line 351
    :cond_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 352
    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 353
    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 357
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v5, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_3

    .line 354
    :cond_6
    :goto_2
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v4, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 355
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v3, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_3

    .line 360
    :cond_7
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v2, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 362
    :goto_3
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$500(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v1

    .line 363
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 364
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$600(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->updateAutoBrightnessState(Z)V

    .line 365
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$800(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    goto :goto_4

    .line 366
    :cond_8
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 367
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$500(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 369
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleUserPresent()V

    goto :goto_4

    .line 370
    :cond_9
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 371
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1, p2}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$900(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/content/Intent;)V

    .line 373
    :cond_a
    :goto_4
    return-void
.end method
