.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogAbandonRunnable"
.end annotation


# instance fields
.field private mIsPending:Z

.field final synthetic this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;


# direct methods
.method private constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V
    .locals 0

    .line 623
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionTracker;
    .param p2, "x1"    # Landroid/widget/SelectionActionModeHelper$1;

    .line 623
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V

    return-void
.end method


# virtual methods
.method flush()V
    .locals 1

    .line 638
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$600(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 639
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->run()V

    .line 640
    return-void
.end method

.method public run()V
    .locals 5

    .line 644
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$900(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 646
    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$700(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$800(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v2

    const/16 v3, 0x6b

    const/4 v4, 0x0

    .line 645
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 648
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$802(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$702(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I

    .line 649
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$900(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 652
    :cond_0
    return-void
.end method

.method schedule(I)V
    .locals 3
    .param p1, "delayMillis"    # I

    .line 628
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_0

    .line 629
    const-string v0, "SelectActionModeHelper"

    const-string v1, "Force flushing abandon due to new scheduling request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 632
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 633
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$600(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    return-void
.end method
