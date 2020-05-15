.class Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 489
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 492
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$800(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Game4DSwitchChange"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$600(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Game4DSwitchChange"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->access$200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void
.end method
