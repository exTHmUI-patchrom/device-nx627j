.class public final synthetic Landroid/app/-$$Lambda$VrManager$CallbackEntry$1$rgUBVVG1QhelpvAp8W3UQHDHJdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/VrManager$CallbackEntry$1;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/VrManager$CallbackEntry$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$1$rgUBVVG1QhelpvAp8W3UQHDHJdU;->f$0:Landroid/app/VrManager$CallbackEntry$1;

    iput-boolean p2, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$1$rgUBVVG1QhelpvAp8W3UQHDHJdU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$1$rgUBVVG1QhelpvAp8W3UQHDHJdU;->f$0:Landroid/app/VrManager$CallbackEntry$1;

    iget-boolean v1, p0, Landroid/app/-$$Lambda$VrManager$CallbackEntry$1$rgUBVVG1QhelpvAp8W3UQHDHJdU;->f$1:Z

    invoke-static {v0, v1}, Landroid/app/VrManager$CallbackEntry$1;->lambda$onVrStateChanged$0(Landroid/app/VrManager$CallbackEntry$1;Z)V

    return-void
.end method
