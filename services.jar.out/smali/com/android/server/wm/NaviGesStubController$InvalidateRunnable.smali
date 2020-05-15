.class Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;
.super Ljava/lang/Object;
.source "NaviGesStubController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaviGesStubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NaviGesStubController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-static {v0}, Lcom/android/server/wm/NaviGesStubController;->access$000(Lcom/android/server/wm/NaviGesStubController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 107
    return-void
.end method
