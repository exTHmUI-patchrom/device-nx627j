.class Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$2;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 111
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$2;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$2;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$400(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$2;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->access$500(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)V

    .line 116
    return-void
.end method
