.class Lcom/android/server/power/PowerManagerService$7;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 4148
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 4151
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;II)V

    .line 4153
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4155
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService;->setVrModeEnabled(Z)V

    .line 4156
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    .line 4157
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    .line 4159
    :cond_0
    monitor-exit v0

    .line 4160
    return-void

    .line 4159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
