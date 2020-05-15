.class Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;
.super Ljava/lang/Object;
.source "BSPCABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteDisplayPowerModeChangedRunnable"
.end annotation


# instance fields
.field private mPowerMode:I

.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;I)V
    .locals 0
    .param p2, "mode"    # I

    .line 600
    iput-object p1, p0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput p2, p0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;->mPowerMode:I

    .line 602
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 606
    iget v0, p0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;->mPowerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$500(Lcom/android/server/BSPCABCController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "BSPCABCController"

    const-string/jumbo v1, "unblanking the screen. re-adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$800(Lcom/android/server/BSPCABCController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v1}, Lcom/android/server/BSPCABCController;->access$700(Lcom/android/server/BSPCABCController;)Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 612
    :cond_1
    return-void
.end method
