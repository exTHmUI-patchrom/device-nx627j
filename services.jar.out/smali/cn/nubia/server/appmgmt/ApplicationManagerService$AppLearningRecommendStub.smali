.class final Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;
.super Lnubia/os/IAppLearningRecommendCallback$Stub;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppLearningRecommendStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1528
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Lnubia/os/IAppLearningRecommendCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAppLearningRecommend(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1530
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$AppLearningRecommendStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->setAppLearningRecommendList(Ljava/util/List;)V

    .line 1534
    :cond_1
    return-void
.end method
