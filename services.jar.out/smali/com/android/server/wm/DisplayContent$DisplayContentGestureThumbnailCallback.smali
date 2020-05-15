.class Lcom/android/server/wm/DisplayContent$DisplayContentGestureThumbnailCallback;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayContentGestureThumbnailCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayContent;

    .line 4288
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$DisplayContentGestureThumbnailCallback;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 4290
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->sNavigestureReady:Z

    .line 4291
    if-eqz p1, :cond_0

    .line 4292
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$DisplayContentGestureThumbnailCallback;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshotController()Lcom/android/server/wm/TaskSnapshotController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->onGestureFinish(Lcom/android/server/wm/AppWindowToken;)V

    .line 4294
    :cond_0
    return-void
.end method

.method public onGestureReady(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 4297
    if-eqz p1, :cond_0

    .line 4298
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->sNavigestureReady:Z

    .line 4299
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$DisplayContentGestureThumbnailCallback;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshotController()Lcom/android/server/wm/TaskSnapshotController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->onGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    .line 4301
    :cond_0
    return-void
.end method
