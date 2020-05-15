.class Lcn/nubia/server/breathinglight/BreathingLightService$1;
.super Landroid/os/Handler;
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

    .line 316
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 321
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    .line 324
    :goto_0
    return-void
.end method
