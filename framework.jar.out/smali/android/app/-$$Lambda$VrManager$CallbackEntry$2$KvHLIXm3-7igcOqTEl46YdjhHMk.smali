.class public final synthetic Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/VrManager$CallbackEntry$2;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/VrManager$CallbackEntry$2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;->f$0:Landroid/app/VrManager$CallbackEntry$2;

    iput-boolean p2, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;->f$0:Landroid/app/VrManager$CallbackEntry$2;

    iget-boolean v1, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$2$KvHLIXm3-7igcOqTEl46YdjhHMk;->f$1:Z

    invoke-static {v0, v1}, Landroid/app/VrManager$CallbackEntry$2;->lambda$onPersistentVrStateChanged$0(Landroid/app/VrManager$CallbackEntry$2;Z)V

    return-void
.end method
