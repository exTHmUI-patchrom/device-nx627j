.class Lcom/android/server/policy/SingleModeCtrl$1;
.super Ljava/lang/Object;
.source "SingleModeCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SingleModeCtrl;->triggerSingleAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 298
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl$1;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$1;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$100(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$1;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$000(Lcom/android/server/policy/SingleModeCtrl;)I

    move-result v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 302
    return-void
.end method
