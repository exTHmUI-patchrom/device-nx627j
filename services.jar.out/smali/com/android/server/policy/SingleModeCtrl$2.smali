.class Lcom/android/server/policy/SingleModeCtrl$2;
.super Ljava/lang/Object;
.source "SingleModeCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleModeCtrl;
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

    .line 347
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl$2;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 350
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$2;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$900(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$2;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$800(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 351
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$2;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$800(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->overscanTop:I

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "SingleModeCtrl"

    const-string/jumbo v1, "singleModeR---kou---6s"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$2;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$100(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 355
    :cond_0
    return-void
.end method
