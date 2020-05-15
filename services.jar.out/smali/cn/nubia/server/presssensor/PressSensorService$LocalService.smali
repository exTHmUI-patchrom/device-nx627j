.class final Lcn/nubia/server/presssensor/PressSensorService$LocalService;
.super Lnubia/os/presssensor/PressSensorInternal;
.source "PressSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/presssensor/PressSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Lnubia/os/presssensor/PressSensorInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressSensorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p2, "x1"    # Lcn/nubia/server/presssensor/PressSensorService$1;

    .line 560
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$LocalService;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    return-void
.end method


# virtual methods
.method public noteKeyguardStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 596
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$2000(Lcn/nubia/server/presssensor/PressSensorService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$LocalService$3;-><init>(Lcn/nubia/server/presssensor/PressSensorService$LocalService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 583
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$2000(Lcn/nubia/server/presssensor/PressSensorService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$LocalService$2;-><init>(Lcn/nubia/server/presssensor/PressSensorService$LocalService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void
.end method

.method public onApplicationManagerSystemReady()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$LocalService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/presssensor/PressSensorService$LocalService$1;-><init>(Lcn/nubia/server/presssensor/PressSensorService$LocalService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    return-void
.end method

.method public onSwitchScreenIneffective()V
    .locals 0

    .line 563
    return-void
.end method
