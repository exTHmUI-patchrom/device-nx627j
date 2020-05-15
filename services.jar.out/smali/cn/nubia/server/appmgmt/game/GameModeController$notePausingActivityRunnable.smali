.class public Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;
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
    name = "notePausingActivityRunnable"
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

    .line 709
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->mUid:I

    .line 711
    iput p3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->mStackId:I

    .line 712
    iput-object p4, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 713
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 719
    const/4 v0, 0x1

    .line 720
    .local v0, "isMainStackApp":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v1

    .line 721
    .local v1, "app":Lcn/nubia/game/ProcessItem;
    :goto_0
    if-nez v1, :cond_1

    .line 722
    return-void

    .line 723
    :cond_1
    iget-object v2, v1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    iput-boolean v3, v1, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    .line 726
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 727
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "GameModeService"

    const-string v4, "force set second packagename empty"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v2

    const-string v4, ""

    iput-object v4, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 729
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v2

    iput v3, v2, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 731
    :cond_4
    return-void
.end method
