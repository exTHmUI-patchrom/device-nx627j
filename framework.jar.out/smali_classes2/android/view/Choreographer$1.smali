.class Landroid/view/Choreographer$1;
.super Ljava/lang/ThreadLocal;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/view/Choreographer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/view/Choreographer;
    .locals 4

    .line 106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 107
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 110
    new-instance v1, Landroid/view/Choreographer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;ILandroid/view/Choreographer$1;)V

    .line 111
    .local v1, "choreographer":Landroid/view/Choreographer;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 112
    invoke-static {v1}, Landroid/view/Choreographer;->access$102(Landroid/view/Choreographer;)Landroid/view/Choreographer;

    .line 114
    :cond_0
    return-object v1

    .line 108
    .end local v1    # "choreographer":Landroid/view/Choreographer;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The current thread must have a looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/view/Choreographer$1;->initialValue()Landroid/view/Choreographer;

    move-result-object v0

    return-object v0
.end method
