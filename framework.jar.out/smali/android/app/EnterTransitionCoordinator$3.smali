.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    .line 458
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSharedElementsReady$0(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 465
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->access$100(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 466
    return-void
.end method

.method public static synthetic lambda$onSharedElementsReady$1(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 464
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$bzpzcEqxdHzyaWu6Gq6AOD9dFMo;

    invoke-direct {v1, p0, p1}, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$bzpzcEqxdHzyaWu6Gq6AOD9dFMo;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 4

    .line 461
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 462
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 463
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    new-instance v3, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;

    invoke-direct {v3, p0, v2}, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v3}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 468
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 470
    :cond_0
    return-void
.end method
