.class Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;
.super Landroid/os/Handler;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallJNIHandler"
.end annotation


# instance fields
.field private mPocessing:Z

.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 482
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 483
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 484
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 485
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 489
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 492
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;

    .line 493
    .local v0, "data":Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;
    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->getLight()I

    move-result v7

    .line 495
    .local v7, "lights":I
    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->getMode()I

    move-result v8

    .line 496
    .local v8, "mode":I
    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->getFrequency()I

    move-result v9

    .line 497
    .local v9, "frequency":I
    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->getColor()I

    move-result v10

    .line 498
    .local v10, "color":I
    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$1200(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/NubiaLightsManager;

    move-result-object v1

    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200()Z

    move-result v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/breathinglight/NubiaLightsManager;->setBreathingLight(IIIIZ)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-static {}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v7, v8, v9, v10}, Lcn/nubia/server/breathinglight/BreathingLightService;->setGreenAndRedLightsJNI(IIII)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v7, v8, v9, v10}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightJNI(IIII)V

    .line 508
    .end local v7    # "lights":I
    .end local v8    # "mode":I
    .end local v9    # "frequency":I
    .end local v10    # "color":I
    :cond_3
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 510
    .end local v0    # "data":Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;
    :goto_1
    return-void
.end method

.method public isPocessing()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    return v0
.end method
