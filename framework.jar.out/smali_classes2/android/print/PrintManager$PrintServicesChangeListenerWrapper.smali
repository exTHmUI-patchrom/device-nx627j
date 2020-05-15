.class public final Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
.super Landroid/print/IPrintServicesChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintServicesChangeListenerWrapper"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/print/PrintManager$PrintServicesChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServicesChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1365
    invoke-direct {p0}, Landroid/print/IPrintServicesChangeListener$Stub;-><init>()V

    .line 1366
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 1368
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1380
    iget-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1381
    return-void
.end method

.method public onPrintServicesChanged()V
    .locals 3

    .line 1372
    iget-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1373
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 1374
    .local v1, "listener":Landroid/print/PrintManager$PrintServicesChangeListener;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1375
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/print/-$$Lambda$c2Elb5E1w2yc6lr236iX-RUAL5Q;

    invoke-direct {v2, v1}, Landroid/print/-$$Lambda$c2Elb5E1w2yc6lr236iX-RUAL5Q;-><init>(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    :cond_0
    return-void
.end method
