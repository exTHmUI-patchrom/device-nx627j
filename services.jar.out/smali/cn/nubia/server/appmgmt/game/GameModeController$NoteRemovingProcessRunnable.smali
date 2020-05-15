.class Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;ILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 770
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->mUid:I

    .line 772
    iput-object p3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 773
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 777
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/game/ProcessItem;)Lcn/nubia/game/ProcessItem;

    .line 780
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3202(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/game/ProcessItem;)Lcn/nubia/game/ProcessItem;

    .line 783
    :cond_1
    return-void
.end method
