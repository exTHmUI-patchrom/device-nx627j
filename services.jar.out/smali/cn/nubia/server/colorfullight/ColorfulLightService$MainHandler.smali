.class Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;
.super Landroid/os/Handler;
.source "ColorfulLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mIsProcessing:Z

.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 445
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 446
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->mIsProcessing:Z

    .line 447
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    .line 442
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->isProcessing()Z

    move-result v0

    return v0
.end method

.method private isProcessing()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->mIsProcessing:Z

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 455
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 490
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] Unknown msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :pswitch_0
    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 470
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x6d

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkBatteryState()V

    .line 475
    goto :goto_0

    .line 465
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkMissEventState()V

    .line 466
    goto :goto_0

    .line 481
    :cond_1
    iput-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->mIsProcessing:Z

    .line 482
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;

    .line 483
    .local v0, "data":Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;
    if-eqz v0, :cond_2

    .line 484
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1200(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLight;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;->access$1100(Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/nubia/server/colorfullight/ColorfulLight;->setColorfulLight(I)V

    .line 486
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->mIsProcessing:Z

    .line 487
    nop

    .line 494
    .end local v0    # "data":Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
