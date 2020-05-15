.class public final synthetic Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/EnterTransitionCoordinator$3;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;->f$0:Landroid/app/EnterTransitionCoordinator$3;

    iput-object p2, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;->f$0:Landroid/app/EnterTransitionCoordinator$3;

    iget-object v1, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$3$I_t9rJUkrW7bwRLQtTrE8DgvPZs;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$onSharedElementsReady$1(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    return-void
.end method
