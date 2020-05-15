.class Lcom/android/server/policy/GameDockModeController$3;
.super Ljava/lang/Object;
.source "GameDockModeController.java"

# interfaces
.implements Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameDockModeController;->showDockModeUnlockView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameDockModeController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameDockModeController;

    .line 229
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeController$3;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideToUnlock()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$3;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$100(Lcom/android/server/policy/GameDockModeController;)V

    .line 233
    return-void
.end method
