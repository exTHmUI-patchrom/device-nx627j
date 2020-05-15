.class Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 405
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 408
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$800(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_4d_shock"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "game4DSwitchValue":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 410
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$400(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Game4DSwitchChange"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$600(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    if-nez v0, :cond_1

    .line 412
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$400(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Game4DSwitchChange"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    const-string v1, "Vibration4DService"

    const-string v2, "Game4DSwitchChangeObserver, can not get 4D switch value!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return-void
.end method
