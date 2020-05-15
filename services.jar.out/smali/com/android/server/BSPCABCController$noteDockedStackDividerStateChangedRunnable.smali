.class Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;
.super Ljava/lang/Object;
.source "BSPCABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "noteDockedStackDividerStateChangedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;Z)V
    .locals 0
    .param p2, "mode"    # Z

    .line 617
    iput-object p1, p0, Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    invoke-static {p1, p2}, Lcom/android/server/BSPCABCController;->access$902(Lcom/android/server/BSPCABCController;Z)Z

    .line 619
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$500(Lcom/android/server/BSPCABCController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "BSPCABCController"

    const-string v1, "Docked Stack Divider State changed , re-adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$600(Lcom/android/server/BSPCABCController;)V

    .line 627
    return-void
.end method
