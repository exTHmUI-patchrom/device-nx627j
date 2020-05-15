.class Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$1;
.super Ljava/lang/Object;
.source "ColorfulLightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    .line 512
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$1;->this$1:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 515
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener$1;->this$1:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    iget-object v0, v0, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x6d

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 517
    return-void
.end method
