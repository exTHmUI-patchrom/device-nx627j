.class Lcom/android/server/wm/WindowManagerService$H$1;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$H;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$H;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/WindowManagerService$H;
    .param p2, "x0"    # Ljava/lang/String;

    .line 5249
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H$1;->this$1:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5251
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 5252
    return-void
.end method
