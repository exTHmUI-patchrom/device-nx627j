.class public final synthetic Landroid/app/-$$Lambda$ActivityTransitionCoordinator$_HMo0E-15AzCK9fwQ8WHzdz8ZIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/ActivityTransitionCoordinator;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$_HMo0E-15AzCK9fwQ8WHzdz8ZIw;->f$0:Landroid/app/ActivityTransitionCoordinator;

    iput p2, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$_HMo0E-15AzCK9fwQ8WHzdz8ZIw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$_HMo0E-15AzCK9fwQ8WHzdz8ZIw;->f$0:Landroid/app/ActivityTransitionCoordinator;

    iget v1, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$_HMo0E-15AzCK9fwQ8WHzdz8ZIw;->f$1:I

    invoke-static {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->lambda$scheduleGhostVisibilityChange$1(Landroid/app/ActivityTransitionCoordinator;I)V

    return-void
.end method
