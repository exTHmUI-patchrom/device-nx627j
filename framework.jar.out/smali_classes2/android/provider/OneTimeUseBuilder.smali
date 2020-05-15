.class public abstract Landroid/provider/OneTimeUseBuilder;
.super Ljava/lang/Object;
.source "OneTimeUseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private used:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    .local p0, "this":Landroid/provider/OneTimeUseBuilder;, "Landroid/provider/OneTimeUseBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    return-void
.end method


# virtual methods
.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected checkNotUsed()V
    .locals 2

    .line 38
    .local p0, "this":Landroid/provider/OneTimeUseBuilder;, "Landroid/provider/OneTimeUseBuilder<TT;>;"
    iget-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected markUsed()V
    .locals 1

    .line 33
    .local p0, "this":Landroid/provider/OneTimeUseBuilder;, "Landroid/provider/OneTimeUseBuilder<TT;>;"
    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    .line 35
    return-void
.end method
