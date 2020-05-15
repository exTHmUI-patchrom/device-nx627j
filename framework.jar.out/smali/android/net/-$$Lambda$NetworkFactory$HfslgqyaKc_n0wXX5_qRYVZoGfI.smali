.class public final synthetic Landroid/net/-$$Lambda$NetworkFactory$HfslgqyaKc_n0wXX5_qRYVZoGfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/NetworkFactory;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkFactory$HfslgqyaKc_n0wXX5_qRYVZoGfI;->f$0:Landroid/net/NetworkFactory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkFactory$HfslgqyaKc_n0wXX5_qRYVZoGfI;->f$0:Landroid/net/NetworkFactory;

    invoke-static {v0}, Landroid/net/NetworkFactory;->lambda$reevaluateAllRequests$0(Landroid/net/NetworkFactory;)V

    return-void
.end method
