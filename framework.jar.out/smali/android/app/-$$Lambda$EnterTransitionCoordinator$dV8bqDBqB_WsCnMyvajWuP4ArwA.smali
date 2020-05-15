.class public final synthetic Landroid/app/-$$Lambda$EnterTransitionCoordinator$dV8bqDBqB_WsCnMyvajWuP4ArwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method public synthetic constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$dV8bqDBqB_WsCnMyvajWuP4ArwA;->f$0:Landroid/app/EnterTransitionCoordinator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$dV8bqDBqB_WsCnMyvajWuP4ArwA;->f$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->lambda$sendSharedElementDestination$1(Landroid/app/EnterTransitionCoordinator;)V

    return-void
.end method
