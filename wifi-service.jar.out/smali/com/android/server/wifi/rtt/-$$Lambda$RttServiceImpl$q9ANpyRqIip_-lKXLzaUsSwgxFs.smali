.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$q9ANpyRqIip_-lKXLzaUsSwgxFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$q9ANpyRqIip_-lKXLzaUsSwgxFs;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$q9ANpyRqIip_-lKXLzaUsSwgxFs;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->lambda$enableIfPossible$1(Lcom/android/server/wifi/rtt/RttServiceImpl;)V

    return-void
.end method
