.class public Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "noteResumingActivityRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p2, "uid"    # I
    .param p3, "stackId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->mUid:I

    .line 616
    iput p3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->mStackId:I

    .line 617
    iput-object p4, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 618
    invoke-static {p1, p4}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2902(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 623
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x1

    .line 635
    .local v0, "isMainStackApp":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v1

    .line 636
    .local v1, "app":Lcn/nubia/game/ProcessItem;
    :goto_0
    if-nez v1, :cond_1

    .line 637
    new-instance v2, Lcn/nubia/game/ProcessItem;

    invoke-direct {v2}, Lcn/nubia/game/ProcessItem;-><init>()V

    move-object v1, v2

    .line 639
    :cond_1
    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->mUid:I

    iput v2, v1, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 640
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 641
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    .line 642
    if-eqz v0, :cond_2

    .line 643
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/game/ProcessItem;)Lcn/nubia/game/ProcessItem;

    goto :goto_1

    .line 645
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3202(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/game/ProcessItem;)Lcn/nubia/game/ProcessItem;

    .line 647
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$800(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 648
    return-void
.end method
