.class Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

.field final synthetic val$this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;Lcom/android/server/display/ColorDisplayService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    .line 476
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    iput-object p2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->val$this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 480
    const-string v0, "ColorDisplayService"

    const-string/jumbo v1, "time changed,clear night display manually close status"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    iget-object v0, v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setNDClosedManuallyFlag(I)V

    .line 483
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->access$900(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;)V

    .line 484
    return-void
.end method
