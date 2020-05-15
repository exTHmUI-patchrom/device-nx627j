.class Lcom/android/server/statusbar/StatusBarManagerService$8;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1388
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1392
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;)Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;

    .line 1393
    return-void
.end method
