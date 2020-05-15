.class Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;
.super Ljava/lang/Object;
.source "CABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteDisplayPowerModeChangedRunnable"
.end annotation


# instance fields
.field private mPowerMode:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;I)V
    .locals 0
    .param p2, "mode"    # I

    .line 619
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;->mPowerMode:I

    .line 621
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 625
    iget v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;->mPowerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$500(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "CABCController"

    const-string/jumbo v1, "unblanking the screen. re-adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$800(Lcn/nubia/server/appmgmt/CABCController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$700(Lcn/nubia/server/appmgmt/CABCController;)Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    :cond_1
    return-void
.end method
