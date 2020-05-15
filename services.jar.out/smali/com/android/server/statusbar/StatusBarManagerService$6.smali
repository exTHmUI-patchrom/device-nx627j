.class Lcom/android/server/statusbar/StatusBarManagerService$6;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$dockedBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedStackVis:I

.field final synthetic val$fullscreenBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenStackVis:I

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 831
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$vis:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$fullscreenStackVis:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$dockedStackVis:I

    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$mask:I

    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$fullscreenBounds:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$dockedBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 833
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$vis:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$fullscreenStackVis:I

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$dockedStackVis:I

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$mask:I

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$fullscreenBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$dockedBounds:Landroid/graphics/Rect;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 840
    :cond_0
    :goto_0
    return-void
.end method
