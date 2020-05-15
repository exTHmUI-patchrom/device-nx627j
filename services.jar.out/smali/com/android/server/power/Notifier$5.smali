.class Lcom/android/server/power/Notifier$5;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    .line 479
    iput-object p1, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 482
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 483
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 484
    iget v1, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 485
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 486
    iget v3, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 487
    iget-object v1, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleep(I)V

    .line 488
    return-void
.end method
