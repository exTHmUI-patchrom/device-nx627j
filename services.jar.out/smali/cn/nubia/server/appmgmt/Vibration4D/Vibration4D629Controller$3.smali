.class Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;
.super Landroid/telephony/PhoneStateListener;
.source "Vibration4D629Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 514
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 516
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 517
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 522
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CALL_STATE_RINGING"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CALL_STATE_IDLE"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$600(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    nop

    .line 528
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
