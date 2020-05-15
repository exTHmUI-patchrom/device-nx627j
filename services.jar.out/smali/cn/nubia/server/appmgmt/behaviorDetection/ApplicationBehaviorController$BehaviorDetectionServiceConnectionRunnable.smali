.class Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;
.super Ljava/lang/Object;
.source "ApplicationBehaviorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BehaviorDetectionServiceConnectionRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 142
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;->mContext:Landroid/content/Context;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    new-instance v1, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->access$002(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;

    .line 151
    :cond_0
    return-void
.end method
