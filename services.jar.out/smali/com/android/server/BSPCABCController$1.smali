.class Lcom/android/server/BSPCABCController$1;
.super Ljava/lang/Object;
.source "BSPCABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method constructor <init>(Lcom/android/server/BSPCABCController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BSPCABCController;

    .line 680
    iput-object p1, p0, Lcom/android/server/BSPCABCController$1;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/android/server/BSPCABCController$1;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$800(Lcom/android/server/BSPCABCController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/BSPCABCController$1;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$1200(Lcom/android/server/BSPCABCController;)V

    .line 685
    return-void
.end method
