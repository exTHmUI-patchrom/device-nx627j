.class Lcn/nubia/server/screenswitch/ScreenSwitchService$3;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->initMotionDetector()V
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

    .line 336
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionChange(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 339
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    if-nez v0, :cond_3

    .line 340
    :cond_1
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoubleScreen start displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1900(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    .line 344
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    const-string v0, "ScreenSwitchService"

    const-string v1, "DoubleScreen end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_3
    return-void
.end method
