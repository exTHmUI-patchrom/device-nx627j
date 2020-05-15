.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$jqpl-iUq-e7YuWqkG33P8PNe7Ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$jqpl-iUq-e7YuWqkG33P8PNe7Ag;->f$0:Landroid/net/lowpan/LowpanCommissioningSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$jqpl-iUq-e7YuWqkG33P8PNe7Ag;->f$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->lambda$lockedCleanup$0(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method
