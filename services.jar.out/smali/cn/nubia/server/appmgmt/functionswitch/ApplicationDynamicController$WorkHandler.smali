.class Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;
.super Landroid/os/Handler;
.source "ApplicationDynamicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 124
    iput-object p1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "AppDynamicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown the message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;->this$0:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->access$500(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;I)V

    .line 133
    nop

    .line 141
    :goto_0
    return-void
.end method
