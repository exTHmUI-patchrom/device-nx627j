.class Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;
.super Landroid/content/BroadcastReceiver;
.source "Vibration4D619Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    .line 419
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 422
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$902(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$400(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OutgoingCallBroadcast"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$1000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$1000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$1100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 430
    :cond_1
    :goto_0
    return-void
.end method
