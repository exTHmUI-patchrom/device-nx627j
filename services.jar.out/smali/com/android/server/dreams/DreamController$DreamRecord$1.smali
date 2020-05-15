.class Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController$DreamRecord;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 471
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 475
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$400(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const-string v3, "/sys/kernel/lcd_enhance/aod_mode"

    const-string v4, "23"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$500(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const-string v3, "/sys/kernel/lcd_enhance/sec_aod_mode"

    const-string v4, "23"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method
