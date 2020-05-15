.class Lcn/nubia/server/presssensor/PressSensorService$BinderService$1;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService$BinderService;->registerRankListener(Lnubia/os/presssensor/IRankListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/presssensor/PressSensorService$BinderService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService$BinderService;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    .line 534
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 536
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 537
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$BinderService$1;->this$1:Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    iget-object v0, v0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1000(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    const/16 v0, 0x64

    invoke-static {v0}, Lcn/nubia/server/presssensor/DriverNode;->setThreshold(I)V

    .line 540
    :cond_0
    return-void
.end method
