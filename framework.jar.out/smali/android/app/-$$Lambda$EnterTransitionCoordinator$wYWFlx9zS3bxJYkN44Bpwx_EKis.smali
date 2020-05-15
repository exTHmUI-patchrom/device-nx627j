.class public final synthetic Landroid/app/-$$Lambda$EnterTransitionCoordinator$wYWFlx9zS3bxJYkN44Bpwx_EKis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/EnterTransitionCoordinator;

.field private final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$wYWFlx9zS3bxJYkN44Bpwx_EKis;->f$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$wYWFlx9zS3bxJYkN44Bpwx_EKis;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$wYWFlx9zS3bxJYkN44Bpwx_EKis;->f$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$$Lambda$EnterTransitionCoordinator$wYWFlx9zS3bxJYkN44Bpwx_EKis;->f$1:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->lambda$triggerViewsReady$0(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V

    return-void
.end method
