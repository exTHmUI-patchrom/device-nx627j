.class Lcom/android/server/wm/AppWindowContainerController$2;
.super Ljava/lang/Object;
.source "AppWindowContainerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindowDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowContainerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppWindowContainerController;

    .line 723
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController$2;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$2;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$2;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 729
    :cond_0
    return-void
.end method
