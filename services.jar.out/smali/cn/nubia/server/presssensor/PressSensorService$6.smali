.class Lcn/nubia/server/presssensor/PressSensorService$6;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService;->removeRankListener(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 468
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$6;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$6;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$400(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 471
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$6;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1000(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$6;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    .line 473
    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_press_threshold"

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService$6;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    .line 475
    invoke-static {v2}, Lcn/nubia/server/presssensor/PressSensorService;->access$1000(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/presssensor/PressGestureSettings;->getThreshold()I

    move-result v2

    .line 472
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, "threshold":I
    invoke-static {v0}, Lcn/nubia/server/presssensor/DriverNode;->setThreshold(I)V

    .line 478
    .end local v0    # "threshold":I
    :cond_0
    return-void
.end method
