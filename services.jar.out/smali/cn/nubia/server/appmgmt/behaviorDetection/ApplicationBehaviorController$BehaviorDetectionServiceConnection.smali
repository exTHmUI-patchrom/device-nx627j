.class Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;
.super Ljava/lang/Object;
.source "ApplicationBehaviorController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BehaviorDetectionServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 161
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local p1, "intent":Landroid/content/Intent;
    const-string v0, "cn.nubia.behaviordetection.action.BehaviorDetectionControlService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v0, "cn.nubia.behaviordetection"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 166
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-static {p2}, Lcn/nubia/behaviordetection/service/IBehaviorDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    .line 171
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;J)V

    goto :goto_0

    .line 174
    :cond_0
    const-string v0, "ApplicationBehaviorDetection"

    const-string v1, "IBehaviorDetectionService Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 180
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    .line 181
    const-string v0, "ApplicationBehaviorDetection"

    const-string v1, "IBehaviorDetectionService Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method
