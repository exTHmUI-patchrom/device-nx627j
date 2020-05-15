.class final Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ColorfulLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColorfulLightPhoneStateListener"
.end annotation


# instance fields
.field private mCallState:I

.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 498
    const/4 p1, -0x1

    iput p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->mCallState:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;Lcn/nubia/server/colorfullight/ColorfulLightService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p2, "x1"    # Lcn/nubia/server/colorfullight/ColorfulLightService$1;

    .line 497
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    .line 497
    iget v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->mCallState:I

    return v0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ge v1, v0, :cond_0

    .line 503
    return-void

    .line 506
    :cond_0
    iput p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->mCallState:I

    .line 507
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] onCallStateChanged: mCallState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    const-wide/16 v0, 0x1f4

    packed-switch p1, :pswitch_data_0

    .line 541
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] Unknown Call State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1300(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$2;

    invoke-direct {v3, p0}, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$2;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;)V

    invoke-virtual {v2, v3, v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    goto :goto_0

    .line 522
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1400(Lcn/nubia/server/colorfullight/ColorfulLightService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x65

    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 524
    invoke-static {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$800(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->getCallMode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 523
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    .line 528
    goto :goto_0

    .line 512
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1300(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$1;

    invoke-direct {v3, p0}, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$1;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;)V

    invoke-virtual {v2, v3, v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    nop

    .line 545
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
